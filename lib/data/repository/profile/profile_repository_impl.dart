import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/form/create_profile_form/create_profile_form.dart';
import 'package:fortune_client/data/model/form/profile_files_request/profile_files_request.dart';
import 'package:fortune_client/data/model/form/profile_update_request/profile_update_request.dart';
import 'package:fortune_client/data/model/profile/profile.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/util/converter/image_converter.dart';
import 'package:fortune_client/util/logger/log_info.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource _profileDataSource;
  final SharedPreferencesDataSource _sharedPreferences;

  ProfileRepositoryImpl(
    this._profileDataSource,
    this._sharedPreferences,
  );

  @override
  Future<bool> isCreated() async {
    return _sharedPreferences.getString(AppPrefKey.profileId.keyString) != null;
  }

  @override
  Future<bool> create({
    required String name,
    required Gender gender,
    required Address addressId,
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
      final profileForm = ProfileForm(
        name: name,
        gender: gender.rawValue,
        addressId: 1,
        images: await _profileFiles(
          iconImage: iconImage,
          mainImage: mainImage,
          secondImage: secondImage,
          thirdImage: thirdImage,
          fourthImage: fourthImage,
        ).then((value) => value.toJson()),
        height: 170,
        drinkFrequency: "OFTEN",
        cigaretteFrequency: "OFTEN",
        // occupationId: null, // 開発中のためNullにしないとエラー出るよ
        // selfIntroduction: null,
        // tagIds: null,
      );

      /// 作成
      final result = await _profileDataSource.create(
        _sharedPreferences.getString(AppPrefKey.fortuneId.keyString)!,
        profileForm.toJson(),
      );

      /// ローカル保存
      return await _sharedPreferences.setString(
          AppPrefKey.profileId.keyString, result.id);
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
  Future<Profile> get() async {
    try {
      final profile = await logInfo(() => _profileDataSource.get());

      /// ローカル保存
      await _sharedPreferences.setString(
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
  Profile getCache() {
    try {
      final result = _sharedPreferences.getString(AppPrefKey.profile.keyString);
      return Profile.fromJson(jsonDecode(result!));
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<void> updateTags({required List<Tag> tags}) async {
    try {
      await _update(tags: tags);
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<void> updateBasicInfo({
    required Address address,
    required int? stature,
    required DrinkFrequency? drinkFrequency,
    required CigaretteFrequency? cigaretteFrequency,
  }) async {
    try {
      await _update(
        address: address,
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
    // String? mainImageURL,
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
    await _sharedPreferences.setString(
      AppPrefKey.profile.keyString,
      jsonEncode(updatedProfile),
    );

    /// [TODO] Update API 動いたら実装
    /// 更新
    // createUpdateRequest(updatedProfile);
    // final result = await logInfo(
    //   () => _profileDataSource.update(
    //     updatedProfile.id,
    //     updatedProfile.toJson(),
    //   ),
    // );
    // return result.id;
    return "";
  }

  /// 作成フォーム画像
  Future<ProfileFilesRequest> _profileFiles({
    required File iconImage,
    File? mainImage,
    File? secondImage,
    File? thirdImage,
    File? fourthImage,
  }) async {
    const toBase64 = ImageConverter.convertImageForBase64;
    return ProfileFilesRequest(
      mainImage: await toBase64(iconImage),
      secondImage: mainImage != null ? await toBase64(mainImage) : null,
      thirdImage: secondImage != null ? await toBase64(secondImage) : null,
      fourthImage: thirdImage != null ? await toBase64(thirdImage) : null,
      fifthImage: fourthImage != null ? await toBase64(fourthImage) : null,
    );
  }

  /// 更新データフォーム作成
  /// [Profile] convert to [ProfileUpdateRequest]
  ProfileUpdateRequest createUpdateRequest(Profile updateProfile) {
    return ProfileUpdateRequest(
      name: updateProfile.name,
      gender: updateProfile.gender.text,
      height: updateProfile.height,
      drinkFrequency: updateProfile.drinkFrequency?.text,
      cigaretteFrequency: updateProfile.cigaretteFrequency?.text,
      selfIntroduction: updateProfile.selfIntroduction,
      occupationId: null,

      /// アドレスデータにはIDをつけるようにする
      addressId: updateProfile.address.id ?? 65,
      tagIds: updateProfile.tags?.map((e) => e.id).toList(),
      files: ProfileFilesRequest(
        mainImage: updateProfile.mainImageURL,
      ),
    );
  }
}
