import 'dart:convert';
import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
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
    required List<File> images,
  }) async {
    try {
      /// 入力画像を保存
      await saveProfileImages(images);

      /// 作成フォーム
      final profileForm = ProfileCreateRequest(
        name: name,
        gender: gender.rawValue,
        addressId: await Repository.address.getId(address),
        files: _generateProfileFiles().toJson(),
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
  @override
  Future<void> update(ProfileUpdateRequest request) async {
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
  Future<ProfileUpdateRequest> _generateUpdateRequest({
    ProfileUpdateRequest Function(ProfileUpdateRequest)? override,
  }) async {
    final profile = getCache();
    final request = ProfileUpdateRequest(
      name: profile.name,
      gender: profile.gender,
      height: profile.height,
      drinkFrequency: profile.drinkFrequency,
      cigaretteFrequency: profile.cigaretteFrequency,
      selfIntroduction: profile.selfIntroduction,
      occupationId: null,
      addressId: await Repository.address.getId(profile.address),
      tagIds: profile.tags.map((e) => e.id).toList(),
      files: _generateProfileFiles(),
    );
    return override?.call(request) ?? request;
  }

  @override
  Future<void> updateProfileImages() async {
    update(await _generateUpdateRequest());
  }

  @override
  Future<void> updateSelfIntroduction(String selfIntroduction) async {
    return update(await _generateUpdateRequest(
      override: (request) => request.copyWith(
        selfIntroduction: selfIntroduction,
      ),
    ));
  }

  @override
  Future<void> updateTags(List<Tag> tags) async {
    return update(await _generateUpdateRequest(
      override: (request) => request.copyWith(
        tagIds: tags.map((e) => e.id).toList(),
      ),
    ));
  }

  @override
  Future<void> updateBasicInfo({
    required Address? address,
    required int? stature,
    required DrinkFrequency? drinkFrequency,
    required CigaretteFrequency? cigaretteFrequency,
  }) async {
    int? addressId;
    if (address != null) addressId = await Repository.address.getId(address);
    return update(await _generateUpdateRequest(
      override: (request) => request.copyWith(
        addressId: addressId ?? request.addressId,
        height: stature,
        drinkFrequency: drinkFrequency,
        cigaretteFrequency: cigaretteFrequency,
      ),
    ));
  }

  Future<void> _saveProfileImagesInBase64(List<String> base64) async {
    _shared.setStringList(AppPrefKey.profileImages.keyString, base64);
  }

  @override
  Future<void> addProfileImage(File file) async {
    final images = getProfileImages();
    images.add(await ImageConverter.toBase64(file));
    _saveProfileImagesInBase64(images);
  }

  @override
  Future<void> updateProfileImageByIndex(int index, File file) async {
    final images = getProfileImages();

    /// 画像枚数より大きいインデックスはエラー
    assert(images.length <= index);
    images[index] = await ImageConverter.toBase64(file);
    _saveProfileImagesInBase64(images);
  }

  @override
  Future<void> removeProfileImageByIndex(int index) async {
    _saveProfileImagesInBase64(getProfileImages()..removeAt(index));
  }

  @override
  List<String> getProfileImages() {
    return _shared.getStringList(AppPrefKey.profileImages.keyString);
  }

  @override
  Future<void> saveProfileImages(List<File> files) async {
    _saveProfileImagesInBase64(
      await Future.wait(files.map((file) => ImageConverter.toBase64(file))),
    );
  }

  /// プロフィールデータを生成
  ProfileFiles _generateProfileFiles() {
    final List<String> images = getProfileImages();
    return ProfileFiles.base64List(images);
  }
}
