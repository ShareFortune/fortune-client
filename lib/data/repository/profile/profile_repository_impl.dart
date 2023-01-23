import 'dart:convert';
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
import 'package:fortune_client/util/logger/log.dart';
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
      final result = await _profile.create(
        _prefs.getString(AppPrefKey.fortuneId.keyString)!,
        profileForm.toJson(),
      );

      /// ローカル保存
      return await _prefs.setString(AppPrefKey.profileId.keyString, result.id);
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
      final result = await logInfo(() => _profile.get());

      /// ローカル保存
      _prefs.setString(
        AppPrefKey.profile.keyString,
        result.toJson().toString(),
      );

      return result;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<Profile> updateBasicInfo({
    int? stature,
    Address? addressId,
    DrinkFrequency? drinkFrequency,
    CigaretteFrequency? cigaretteFrequency,
  }) async {
    await _update(
      stature: stature,
      addressId: 65,
      drinkFrequency: drinkFrequency?.text,
      cigaretteFrequency: cigaretteFrequency?.text,
    );
    return await get();
  }

  Future<String> _update({
    String? name,
    String? gender,
    int? addressId,
    int? stature,
    String? drinkFrequency,
    String? cigaretteFrequency,
    List<String>? tagIds,
    int? occupationId,
    String? selfIntroduction,
    ProfileFilesRequest? files,
  }) async {
    final profile = Profile.fromJson(jsonDecode(
      _prefs.getString(AppPrefKey.profile.keyString)!,
    ));

    final requestFiles = ProfileFilesRequest(mainImage: profile.mainImageURL);
    final request = ProfileUpdateRequest(
      name: name ?? profile.name,
      gender: gender ?? profile.gender.text,
      height: stature ?? profile.height,
      drinkFrequency: drinkFrequency ?? profile.drinkFrequency?.text,
      cigaretteFrequency:
          cigaretteFrequency ?? profile.cigaretteFrequency?.text,
      selfIntroduction: selfIntroduction ?? profile.selfIntroduction,
      occupationId: null,
      addressId: addressId ?? profile.address.id!,
      tagIds: tagIds ?? profile.tags?.map((e) => e.id).toList(),
      files: files ?? requestFiles,
    );
    final result = await logInfo(
      () => _profile.update(profile.id, request.toJson()),
    );
    return result.id;
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
}
