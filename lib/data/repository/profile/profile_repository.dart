import 'dart:io';

import 'package:fortune_client/data/model/profile/profile.dart';
import 'package:fortune_client/data/model/enum/gender_type.dart';

abstract class ProfileRepository {
  /// 作成済みかどうか
  Future<bool> isCreated();

  /// 作成
  Future<bool> create({
    required String name,
    required GenderType gender,
    required int addressId,
    required int? height,
    required String? drinkFrequency,
    required String? cigaretteFrequency,
    required int? occupationId,

    ///
    /// Images
    required File? iconImage,
    required File? mainImage,
    required File? secondImage,
    required File? thirdImage,
    required File? fourthImage,
  });
  Future<String> update();
  Future<Profile> get();
}
