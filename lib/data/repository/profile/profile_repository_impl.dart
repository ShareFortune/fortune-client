import 'dart:io';

import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/model/profile/profile.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/model/enum/gender_type.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource _dataSource;

  ProfileRepositoryImpl(this._dataSource);

  bool cretest = false;

  @override
  bool get isCreated => cretest;

  @override
  Future<String> update() {
    throw UnimplementedError();
  }

  @override
  Future<Profile> get(String id) async {
    return await _dataSource.get(id);
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
    final result = await _dataSource.create();
    cretest = true;
    return result;
  }
}
