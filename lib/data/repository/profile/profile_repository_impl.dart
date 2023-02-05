import 'dart:convert';
import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/base/profiles_files/profiles_files.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';
import 'package:fortune_client/data/model/profiles/patch_v1_profiles_id/patch_v1_profiles_id.dart';
import 'package:fortune_client/data/model/profiles/post_v1_users_id_profiles/post_v1_users_id_profiles.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/util/converter/image_converter.dart';
import 'package:fortune_client/util/logger/log_info.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource _profileDataSource;
  final SharedPreferencesDataSource _shared;

  /// 画像変換
  final toBase64 = ImageConverter.convertImageForBase64;

  ProfileRepositoryImpl(
    this._profileDataSource,
    this._shared,
  );

  @override
  Future<bool> isCreated() async {
    return _shared.getString(AppPrefKey.profileId.keyString) != null;
  }

  @override
  Future<GetV1ProfilesResponse> get() async {
    try {
      final profile = await logInfo(() => _profileDataSource.get());

      /// ローカル保存
      await _shared.setString(
        AppPrefKey.profile.keyString,
        jsonEncode(profile),
      );

      return profile;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  GetV1ProfilesResponse getCache() {
    try {
      final result = _shared.getString(AppPrefKey.profile.keyString);
      return GetV1ProfilesResponse.fromJson(jsonDecode(result!));
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<void> saveProfileImages({
    File? mainImage,
    File? secondImage,
    File? thirdImage,
    File? fourthImage,
    File? fifthImage,
    File? sixthImage,
  }) async {
    Future<void> saveImage(String key, File? file) async {
      if (file != null) _shared.setString(key, await toBase64(file));
    }

    await saveImage(AppPrefKey.profileMainImage.keyString, mainImage);
    await saveImage(AppPrefKey.profileSecondImage.keyString, secondImage);
    await saveImage(AppPrefKey.profileThirdImage.keyString, thirdImage);
    await saveImage(AppPrefKey.profileFourthImage.keyString, fourthImage);
    await saveImage(AppPrefKey.profileFifthImage.keyString, fifthImage);
    await saveImage(AppPrefKey.profileSixthImage.keyString, sixthImage);
  }

  @override
  ProfilesFiles getProfileImages() {
    return ProfilesFiles(
      mainImage: _shared.getString(AppPrefKey.profileMainImage.keyString)!,
      secondImage: _shared.getString(AppPrefKey.profileSecondImage.keyString),
      thirdImage: _shared.getString(AppPrefKey.profileThirdImage.keyString),
      fourthImage: _shared.getString(AppPrefKey.profileFourthImage.keyString),
      fifthImage: _shared.getString(AppPrefKey.profileFifthImage.keyString),
      sixthImage: _shared.getString(AppPrefKey.profileSixthImage.keyString),
    );
  }

  @override
  Future<bool> create({
    required String name,
    required Gender gender,
    required AddressWithId address,
    int? height,
    DrinkFrequency? drinkFrequency,
    CigaretteFrequency? cigaretteFrequency,
    int? occupationId,
    required File mainImage,
    File? secondImage,
    File? thirdImage,
    File? fourthImage,
    File? fifthImage,
    File? sixthImage,
  }) async {
    try {
      logger.i("[$runtimeType] create");

      /// 入力画像を保存
      await saveProfileImages(
        mainImage: mainImage,
        secondImage: secondImage,
        thirdImage: thirdImage,
        fourthImage: fourthImage,
        fifthImage: fifthImage,
        sixthImage: sixthImage,
      );

      /// 作成フォーム
      final profileForm = PostV1UsersIdProfilesRequest(
        name: name,
        gender: gender.rawValue,
        addressId: address.id,
        files: getProfileImages().toJson(),
        height: 170,
        drinkFrequency: drinkFrequency,
        cigaretteFrequency: cigaretteFrequency,
        occupationId: null, // 開発中のためNullにしないとエラー出るよ
      );

      /// 作成
      final result = await _profileDataSource.create(
        _shared.getString(AppPrefKey.fortuneId.keyString)!,
        profileForm.toJson(),
      );

      /// ローカル保存
      return await _shared.setString(
        AppPrefKey.profileId.keyString,
        result.id,
      );
    } catch (e) {
      Fluttertoast.showToast(
        gravity: ToastGravity.CENTER,
        msg: e.toString(),
      );
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<void> updateProfileImages({
    File? mainImage,
    File? secondImage,
    File? thirdImage,
    File? fourthImage,
    File? fifthImage,
    File? sixthImage,
  }) async {
    /// 入力画像を保存
    await saveProfileImages(
      mainImage: mainImage,
      secondImage: secondImage,
      thirdImage: thirdImage,
      fourthImage: fourthImage,
      fifthImage: fifthImage,
      sixthImage: sixthImage,
    );

    final profile = getCache();
    final request = convertToPatchV1ProfilesIdRequest(profile);
    await _update(profile.id, request);
  }

  @override
  Future<void> updateSelfIntroduction(String selfIntroduction) async {
    final profile = getCache();
    final request = convertToPatchV1ProfilesIdRequest(profile);

    await _update(
      profile.id,
      request.copyWith(selfIntroduction: selfIntroduction),
    );
  }

  @override
  Future<void> updateTags(List<Tag> tags) async {
    final profile = getCache();
    final request = convertToPatchV1ProfilesIdRequest(profile);

    await _update(
      profile.id,
      request.copyWith(tagIds: tags.map((e) => e.id).toList()),
    );
  }

  @override
  Future<void> updateBasicInfo({
    required AddressWithId? addressWithId,
    required int? stature,
    required DrinkFrequency? drinkFrequency,
    required CigaretteFrequency? cigaretteFrequency,
  }) async {
    final profile = getCache();
    final request = convertToPatchV1ProfilesIdRequest(profile);

    await _update(
      profile.id,
      request.copyWith(
        addressId: addressWithId?.id ?? request.addressId,
        height: stature,
        drinkFrequency: drinkFrequency,
        cigaretteFrequency: cigaretteFrequency,
      ),
    );
  }

  Future<void> _update(String id, PatchV1ProfilesIdRequest request) async {
    try {
      return await logInfo(
        () => _profileDataSource.update(id, request.toJson()),
      );
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  /// 更新データフォーム作成
  /// [Profile] convert to [ProfileUpdateRequest]
  PatchV1ProfilesIdRequest convertToPatchV1ProfilesIdRequest(
    GetV1ProfilesResponse updateProfile,
  ) {
    return PatchV1ProfilesIdRequest(
      name: updateProfile.name,
      gender: updateProfile.gender,
      height: updateProfile.height,
      drinkFrequency: updateProfile.drinkFrequency,
      cigaretteFrequency: updateProfile.cigaretteFrequency,
      selfIntroduction: updateProfile.selfIntroduction,
      occupationId: null,
      addressId: 65, // TODO: アドレスデータにID追加
      tagIds: updateProfile.tags?.map((e) => e.id).toList(),
      files: getProfileImages(),
    );
  }
}

const _testImage =
    "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABmJLR0QA/wD/AP+gvaeTAAACHElEQVRYhe3WO2gUURTG8V9MwBc2aiFooaCIJqAEU2lQtBLsbETxgZ2IjVUUERQjGlECIiqKYC0K2qUSK0GMlrGQBMHCBz4ajc+sxZzJbDYzm2SzGxDyh8sM99xzvjPnvoZZ/lPW4xZeYxhvcBftMyF+GD9Qymm/cbyR4tsxEmK30Yb5WIPL+Bv2o9FfF5bhPPrwOcTPFIw9IqvGd1zDwumI78E3Y8v8FnMLxjfhKp5LpqOEF2qsxo6yIPewO/q2TtK/Fa/Cv7eWBJ6G89lanIMNkjXxRXHVxrEAN0L801QcC0ircMckpmIOHoXDME5MU1zE+BkxH0rWSSH7YuA7rK2DeEobPkTsvdUGPolB++sonnIoYj+uNijd54sbkMBS2boaZU7FoJZ4zisI0oQh+cdweevI8U0Xc0t5Z2UC/fE8UJBAO1YW2FKGJAdRJQfjmWcbZZfkC37hHFajuczeHfYrOb49Yesp62uOGN0Rs4SdE3yAU7ILp/yWWyLb050VPk0YlJW/z/hpGcHJicRTOvEA72Urt1W2RSunriNsg5Fo+rWliHEfWyYrXsTpCHg9x3YpbBenK1KNl8aXtdfY8qet7qzKES9hm6z8aRtqRALlrAuhj9gkue/TRXYTixqdQFcIfsWfeB/A5kYLpzwzdnteUHxy1p0VsjOiHxtnSjjlmOQ/oUvFmV4rUw2yXHIfDNRDvBaq/s3MUgv/AEHipuJpYlyAAAAAAElFTkSuQmCC";
