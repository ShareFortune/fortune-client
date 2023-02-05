import 'dart:convert';
import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/model/base/address/address.dart';
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
    required File iconImage,
    File? mainImage,
    File? secondImage,
    File? thirdImage,
    File? fourthImage,
  }) async {
    try {
      logger.i("[$runtimeType] create");

      /// 作成フォーム
      final profileForm = PostV1UsersIdProfilesRequest(
        name: name,
        gender: gender.rawValue,
        addressId: address.id,
        files: await _profileFiles(
          iconImage: iconImage,
          mainImage: mainImage,
          secondImage: secondImage,
          thirdImage: thirdImage,
          fourthImage: fourthImage,
        ).then((value) => value.toJson()),
        height: 170,
        drinkFrequency: drinkFrequency,
        cigaretteFrequency: cigaretteFrequency,
        // occupationId: null, // 開発中のためNullにしないとエラー出るよ
        // selfIntroduction: null,
        // tagIds: null,
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
    File? iconImage,
    File? mainImage,
    File? secondImage,
    File? thirdImage,
    File? fourthImage,
  }) {
    // TODO: implement updateProfileImages
    throw UnimplementedError();
  }

  @override
  Future<void> updateSelfIntroduction(String selfIntroduction) async {
    try {
      await _update(selfIntroduction: selfIntroduction);
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<void> updateTags(List<Tag> tags) async {
    try {
      await _update(tags: tags);
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<void> updateBasicInfo({
    required AddressWithId? addressWithId,
    required int? stature,
    required DrinkFrequency? drinkFrequency,
    required CigaretteFrequency? cigaretteFrequency,
  }) async {
    try {
      await _update(
        address: addressWithId != null
            ? Address(
                country: addressWithId.country,
                prefecture: addressWithId.prefecture,
                city: addressWithId.city,
              )
            : null,
        stature: stature,
        drinkFrequency: drinkFrequency,
        cigaretteFrequency: cigaretteFrequency,
      );
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  Future<String> _update({
    File? mainImage,
    Gender? gender,
    Address? address,
    int? stature,
    DrinkFrequency? drinkFrequency,
    CigaretteFrequency? cigaretteFrequency,
    String? selfIntroduction,
    List<Tag>? tags,
  }) async {
    /// 入力データを元に新たなプロフィールデータを生成
    final profile = getCache();
    final updatedProfile = profile.copyWith(
      gender: gender ?? profile.gender,
      address: address ?? profile.address,
      height: stature ?? profile.height,
      drinkFrequency: drinkFrequency ?? profile.drinkFrequency,
      cigaretteFrequency: cigaretteFrequency ?? profile.cigaretteFrequency,
      selfIntroduction: selfIntroduction ?? profile.selfIntroduction,
      tags: tags ?? profile.tags,
    );

    /// ローカルに保存
    saveProfileImages(mainImage: mainImage);
    await _shared.setString(
      AppPrefKey.profile.keyString,
      jsonEncode(updatedProfile),
    );

    /// 更新
    final result = await logInfo(
      () => _profileDataSource.update(
        updatedProfile.id,
        convertToPatchV1ProfilesIdRequest(updatedProfile).toJson(),
      ),
    );
    return result.id;
  }

  /// 作成フォーム画像
  Future<ProfilesFiles> _profileFiles({
    required File iconImage,
    File? mainImage,
    File? secondImage,
    File? thirdImage,
    File? fourthImage,
  }) async {
    return ProfilesFiles(
      mainImage: await toBase64(iconImage),
      secondImage: mainImage != null ? await toBase64(mainImage) : null,
      thirdImage: secondImage != null ? await toBase64(secondImage) : null,
      fourthImage: thirdImage != null ? await toBase64(thirdImage) : null,
      fifthImage: fourthImage != null ? await toBase64(fourthImage) : null,
    );
  }

  /// 更新データフォーム作成
  /// [Profile] convert to [ProfileUpdateRequest]
  PatchV1ProfilesIdRequest convertToPatchV1ProfilesIdRequest(
      GetV1ProfilesResponse updateProfile) {
    return PatchV1ProfilesIdRequest(
      name: updateProfile.name,
      gender: updateProfile.gender.text,
      height: updateProfile.height,
      drinkFrequency: updateProfile.drinkFrequency?.text,
      cigaretteFrequency: updateProfile.cigaretteFrequency?.text,
      selfIntroduction: updateProfile.selfIntroduction,
      occupationId: null,

      /// アドレスデータにはIDをつけるようにする
      addressId: 65,
      tagIds: updateProfile.tags?.map((e) => e.id).toList(),
      files: ProfilesFiles(
        mainImage: updateProfile.mainImageURL,
      ),
    );
  }
}
