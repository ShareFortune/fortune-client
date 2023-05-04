import 'dart:convert';
import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/addresses/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/profile_images_type.dart';
import 'package:fortune_client/data/model/profile/profile_request/profile_request.dart';
import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/util/converter/image_converter.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource _profileDataSource;
  final SharedPreferencesDataSource _shared;

  ProfileRepositoryImpl(
    this._profileDataSource,
    this._shared,
  );

  @override
  bool isCreated() => _shared.contains(AppPrefKey.profileId.keyString);

  @override
  Future<ProfileResponse> get() async {
    try {
      final profile = await _profileDataSource.get();

      /// ローカル保存
      _shared.setString(AppPrefKey.profileId.keyString, profile.id);
      _shared.setString(AppPrefKey.profile.keyString, jsonEncode(profile));

      return profile;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  ProfileResponse getCache() {
    final result = _shared.getString(AppPrefKey.profile.keyString);
    return ProfileResponse.fromJson(jsonDecode(result!));
  }

  @override
  Future<bool> create({
    required String name,
    required Gender gender,
    required Address address,
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
      final profileForm = ProfileCreateRequest(
        name: name,
        gender: gender.rawValue,
        addressId: await Repository.address.getId(address),
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

      /// プロフィールIDをローカル保存
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

  ///
  /// プロフィール更新
  ///
  Future<void> _update(ProfileUpdateRequest request) async {
    try {
      await _profileDataSource.update(
        _shared.getString(AppPrefKey.profileId.keyString)!,
        request.toJson(),
      );
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  ///
  /// 更新データフォーム作成
  ///
  Future<void> _generateUpdateRequest(
    Function(ProfileUpdateRequest request) update,
  ) async {
    final profile = getCache();
    final request = ProfileUpdateRequest(
      name: profile.name,
      gender: profile.gender,
      height: profile.height,
      drinkFrequency: profile.drinkFrequency,
      cigaretteFrequency: profile.cigaretteFrequency,
      selfIntroduction: profile.selfIntroduction,
      occupationId: null,
      addressId: 65, // TODO: アドレスデータにID追加
      tagIds: profile.tags.map((e) => e.id).toList(),
      files: getProfileImages(),
    );
    update(request);
  }

  @override
  Future<void> updateProfileImages() async {
    _generateUpdateRequest(_update);
  }

  @override
  Future<void> updateSelfIntroduction(String selfIntroduction) async {
    await _generateUpdateRequest(
      (request) => _update(
        request.copyWith(selfIntroduction: selfIntroduction),
      ),
    );
  }

  @override
  Future<void> updateTags(List<Tag> tags) async {
    await _generateUpdateRequest(
      (request) => _update(
        request.copyWith(tagIds: tags.map((e) => e.id).toList()),
      ),
    );
  }

  @override
  Future<void> updateBasicInfo({
    required AddressWithId? addressWithId,
    required int? stature,
    required DrinkFrequency? drinkFrequency,
    required CigaretteFrequency? cigaretteFrequency,
  }) async {
    await _generateUpdateRequest(
      (request) => _update(
        request.copyWith(
          addressId: addressWithId?.id ?? request.addressId,
          height: stature,
          drinkFrequency: drinkFrequency,
          cigaretteFrequency: cigaretteFrequency,
        ),
      ),
    );
  }

  /// プロおフィール画像をローカル保存
  Future<void> _saveImageLocally(String key, File? file) async {
    _shared.setString(
      key,
      file != null ? await ImageConverter.toBase64(file) : "",
    );
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
    _saveImageLocally(ProfileImagesType.mainImage.keyString, mainImage);
    _saveImageLocally(ProfileImagesType.secondImage.keyString, secondImage);
    _saveImageLocally(ProfileImagesType.thirdImage.keyString, thirdImage);
    _saveImageLocally(ProfileImagesType.fourthImage.keyString, fourthImage);
    _saveImageLocally(ProfileImagesType.fifthImage.keyString, fifthImage);
    _saveImageLocally(ProfileImagesType.sixthImage.keyString, sixthImage);
  }

  @override
  ProfileFiles getProfileImages() {
    return ProfileFiles(
      mainImage: getProfileImageByType(ProfileImagesType.mainImage)!,
      secondImage: getProfileImageByType(ProfileImagesType.secondImage),
      thirdImage: getProfileImageByType(ProfileImagesType.thirdImage),
      fourthImage: getProfileImageByType(ProfileImagesType.fourthImage),
      fifthImage: getProfileImageByType(ProfileImagesType.fifthImage),
      sixthImage: getProfileImageByType(ProfileImagesType.sixthImage),
    );
  }

  @override
  String? getProfileImageByType(ProfileImagesType type) {
    final data = _shared.getString(type.keyString);
    if (data == null || data.isEmpty) {
      return null;
    }
    return data;
  }

  @override
  Future<void> saveProfileImageByType(
    ProfileImagesType type,
    File? file,
  ) async {
    await _saveImageLocally(type.keyString, file);
  }
}
