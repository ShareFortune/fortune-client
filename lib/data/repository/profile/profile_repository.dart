import 'dart:io';

import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/base/profiles_files/profiles_files.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';

abstract class ProfileRepository {
  /// 作成済みかどうか
  Future<bool> isCreated();

  /// 取得
  Future<GetV1ProfilesResponse> get();

  /// キャッシュに保存されたプロフィールを取得
  GetV1ProfilesResponse getCache();

  /// 作成
  Future<bool> create({
    required String name,
    required Gender gender,
    required AddressWithId address,
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

  /// 更新
  Future<void> updateProfileImages({
    File? mainImage,
    File? secondImage,
    File? thirdImage,
    File? fourthImage,
    File? fifthImage,
    File? sixthImage,
  });
  Future<void> updateSelfIntroduction(String selfIntroduction);
  Future<void> updateTags(List<Tag> tags);
  Future<void> updateBasicInfo({
    required AddressWithId? addressWithId,
    required int? stature,
    required DrinkFrequency? drinkFrequency,
    required CigaretteFrequency? cigaretteFrequency,
  });

  /// プロフィール画像をローカル保存
  /// プロフィール編集用のプロフィール画像を保存する。
  Future<void> saveProfileImages({
    File? mainImage,
    File? secondImage,
    File? thirdImage,
    File? fourthImage,
    File? fifthImage,
    File? sixthImage,
  });
  ProfilesFiles getProfileImages();
}
