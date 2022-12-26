import 'dart:io';

import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/model/create_profile_form/create_profile_form.dart';
import 'package:fortune_client/data/model/profile/profile.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/model/enum/gender_type.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource _profileDataSource;
  final SharedPrefDataSource _sharedPrefDataSource;

  ProfileRepositoryImpl(this._profileDataSource, this._sharedPrefDataSource);

  @override
  bool get isCreated => true;

  @override
  Future<String> update() {
    throw UnimplementedError();
  }

  @override
  Future<Profile> get(String id) async {
    return await _profileDataSource.get(id);
  }

  @override
  Future<String> create({
    required File? iconImage,
    required File? mainImage,
    required File? secondImage,
    required File? thirdImage,
    required File? fourthImage,
    required String name,
    required GenderType gender,
    required int height,
    required String drinkFrequency,
    required String cigaretteFrequency,
  }) async {
    ///
    final form = CreateProfileForm(
      name: name,
      gender: gender.sendValue,
      height: height,
      drinkFrequency: drinkFrequency,
      cigaretteFrequency: cigaretteFrequency,
      selfIntroduction: "selfIntroduction",
      occupationId: 0,
      addressId: 0,
      tags: [],
      iconImage: iconImage?.path ?? "",
      firstImage: mainImage?.path ?? "",
      secondImage: secondImage?.path ?? "",
      thirdImage: thirdImage?.path ?? "",
      fourthImage: fourthImage?.path ?? "",
      fifthImage: "",
    );

    /// ローカル保存したIDを取り出す
    /// [id] ユーザー作成時のID
    try {
      final result = await _profileDataSource.create("id", form.toJson());
      // profileIsCreated = true;
      return result;
    } catch (e) {
      /// Dio error
      rethrow;
    }
  }
}
