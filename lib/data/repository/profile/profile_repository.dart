import 'dart:io';

import 'package:fortune_client/data/model/profile/profile.dart';
import 'package:fortune_client/data/model/enum/gender_type.dart';

abstract class ProfileRepository {
  /// 作成済みかどうか
  bool get isCreated;

  /// 作成
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
    // required String selfIntroduction,
    // required int occupationId,
    // required int addressId,
  });
  Future<String> update();
  Future<Profile> get(String id);
}
