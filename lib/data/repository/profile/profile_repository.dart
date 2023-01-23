import 'dart:io';

import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/profile/profile.dart';
import 'package:fortune_client/data/model/enum/gender.dart';

abstract class ProfileRepository {
  /// 作成済みかどうか
  Future<bool> isCreated();

  /// 作成
  Future<bool> create({
    required String name,
    required Gender gender,
    required Address addressId,
    required int? height,
    required DrinkFrequency? drinkFrequency,
    required CigaretteFrequency? cigaretteFrequency,
    required int? occupationId,

    /// Images
    required File iconImage,
    required File? mainImage,
    required File? secondImage,
    required File? thirdImage,
    required File? fourthImage,
  });

  /// 取得
  Future<Profile> get();

  /// アップデート基本情報
  ///
  Future<Profile> updateBasicInfo({
    int? stature,
    Address? addressId,
    DrinkFrequency? drinkFrequency,
    CigaretteFrequency? cigaretteFrequency,
  });
}
