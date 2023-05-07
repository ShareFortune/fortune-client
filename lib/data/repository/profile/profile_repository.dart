import 'dart:io';

import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/data/model/profile/profile_request/profile_request.dart';
import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';

abstract class ProfileRepository {
  /// 作成済みかどうか
  bool isCreated();

  /// 取得
  Future<ProfileResponse> get();

  /// キャッシュに保存されたプロフィールを取得
  ProfileResponse getCache();

  /// 作成
  Future<bool> create({
    required String name,
    required Gender gender,
    required Address address,

    /// Images
    required List<File> images,
  });

  /// 更新
  Future<void> update(ProfileUpdateRequest request);
  Future<void> updateProfileImages();
  Future<void> updateSelfIntroduction(String selfIntroduction);
  Future<void> updateTags(List<Tag> tags);
  Future<void> updateBasicInfo({
    required Address? address,
    required int? stature,
    required DrinkFrequency? drinkFrequency,
    required CigaretteFrequency? cigaretteFrequency,
  });

  /// プロフィール画像をList形式でローカル保存
  Future<void> saveProfileImages(List<File> files);

  /// プロフィール画像をList形式で取得
  List<String> getProfileImages();

  /// プロフィール画像を追加
  Future<void> addProfileImage(File file);

  /// プロフィール画像を変更
  Future<void> updateProfileImageByIndex(int index, File file);

  /// List形式で保存されたプロフィール画像をIndexで削除
  Future<void> removeProfileImageByIndex(int index);
}
