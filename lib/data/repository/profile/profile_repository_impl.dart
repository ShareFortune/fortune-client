import 'dart:io';

import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/model/form/create_profile_form/create_profile_form.dart';
import 'package:fortune_client/data/model/profile/profile.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/util/converter/image_converter.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource _profile;
  final SharedPreferencesDataSource _prefs;

  ProfileRepositoryImpl(
    this._profile,
    this._prefs,
  );

  @override
  Future<bool> isCreated() async {
    return _prefs.getString(AppPrefKey.profileId.keyString) != null;
  }

  @override
  Future<String> update() {
    throw UnimplementedError();
  }

  @override
  Future<Profile> get() async {
    try {
      logger.i("[$runtimeType] get");
      final result = await _profile.get();
      return result;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<bool> create({
    required String name,
    required Gender gender,
    required int addressId,
    int? height,
    String? drinkFrequency,
    String? cigaretteFrequency,
    int? occupationId,
    File? iconImage,
    File? mainImage,
    File? secondImage,
    File? thirdImage,
    File? fourthImage,
  }) async {
    try {
      logger.i("[$runtimeType] create");

      /// 作成フォーム画像
      const toBase64 = ImageConverter.convertImageForBase64;
      logger.i(await toBase64(iconImage!));
      final profileFormImage = ProfileFormImages(
        mainImage: await toBase64(iconImage!),
        secondImage: mainImage != null ? await toBase64(mainImage) : null,
        thirdImage: secondImage != null ? await toBase64(secondImage) : null,
        fourthImage: thirdImage != null ? await toBase64(thirdImage) : null,
        fifthImage: fourthImage != null ? await toBase64(fourthImage) : null,
      );

      /// 作成フォーム
      final profileForm = ProfileForm(
        name: name,
        gender: gender.rawValue,
        addressId: 1,
        images: profileFormImage.toJson(),
        height: 170,
        drinkFrequency: "OFTEN",
        cigaretteFrequency: "OFTEN",
        // occupationId: null, // 開発中のためNullにしないとエラー出るよ
        // selfIntroduction: null,
        // tagIds: null,
      );

      /// 作成
      final result = await _profile.create(
        _prefs.getString(AppPrefKey.fortuneId.keyString)!,
        profileForm.toJson(),
      );
      logger.i("Profile ID : $result");

      /// ローカル保存
      return await _prefs.setString(AppPrefKey.profileId.keyString, result.id);
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
