import 'dart:io';

import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/addresses/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/data/model/enum/profile_images_type.dart';
import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';

abstract class ProfileRepository {
  /// 作成済みかどうか
  Future<bool> isCreated();

  /// 取得
  Future<ProfileResponse> get();

  /// キャッシュに保存されたプロフィールを取得
  ProfileResponse getCache();

  /// 作成
  Future<bool> create({
    required String name,
    required Gender gender,
    required Address address,
    int? height,
    DrinkFrequency? drinkFrequency,
    CigaretteFrequency? cigaretteFrequency,
    int? occupationId,

    /// Images
    required File mainImage,
    File? secondImage,
    File? thirdImage,
    File? fourthImage,
    File? fifthImage,
    File? sixthImage,
  });

  /// 更新
  Future<void> updateProfileImages();
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

  /// ローカル保存されたプロフィール画像を取得
  /// [ProfilesFiles]
  ProfileFiles getProfileImages();

  /// [ProfileImagesType]に応じて画像を取得
  /// 文字列が存在しない場合はnullを返す
  String? getProfileImageByType(ProfileImagesType type);

  /// [ProfileImagesType]に応じて画像を保存
  Future<void> saveProfileImageByType(ProfileImagesType type, File? file);
}
