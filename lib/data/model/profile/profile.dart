// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  factory Profile({
    @JsonKey(name: "id") required String id,

    /// 名前
    @JsonKey(name: "username") required String username,

    /// ニックネーム
    @JsonKey(name: "name") required String name,

    /// 性別
    @JsonKey(name: "gender") @GenderConverter() required Gender gender,

    /// 身長
    @JsonKey(name: "height") required int height,

    /// お酒をよく飲むか
    @JsonKey(name: "drinkFrequency")
    @DrinkFrequencyConverter()
        required DrinkFrequency drinkFrequency,

    /// タバコをよく吸うか
    @JsonKey(name: "cigaretteFrequency")
    @CigaretteFrequencyConverter()
        required CigaretteFrequency cigaretteFrequency,

    /// 自己紹介文
    @JsonKey(name: "selfIntroduction") required String selfIntroduction,

    /// 居住地
    @JsonKey(name: "address") required Address address,

    /// 居住地
    @JsonKey(name: "tags") required List<Tag> tags,

    /// プロフィール画像
    @JsonKey(name: "mainImageURL") required String mainImageURL,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
