// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  factory Profile({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "username") required String username, // 名前
    @JsonKey(name: "name") required String name, // ニックネーム
    @JsonKey(name: "gender") required String gender, // 性別
    @JsonKey(name: "height") required int height, // 身長
    @JsonKey(name: "drinkFrequency") required String drinkFrequency, // お酒をよく飲むか
    @JsonKey(name: "cigaretteFrequency")
        required String cigaretteFrequency, // タバコをよく吸うか
    @JsonKey(name: "selfIntroduction")
        required String selfIntroduction, // 自己紹介文
    @JsonKey(name: "address") required Address address, // 居住地
    @JsonKey(name: "tags") required List<Tag> tags, // 居住地
    @JsonKey(name: "mainImageURL") required String mainImageURL, // プロフィール画像
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
