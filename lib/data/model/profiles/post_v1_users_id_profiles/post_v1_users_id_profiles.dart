// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_v1_users_id_profiles.freezed.dart';
part 'post_v1_users_id_profiles.g.dart';

@freezed
class PostV1UsersIdProfilesRequest with _$PostV1UsersIdProfilesRequest {
  const factory PostV1UsersIdProfilesRequest({
    @freezed

    /// 修正必須
    /// アイコン画像
    @JsonKey(name: 'files')
        required Map<String, dynamic> files,

    /// 名前
    @JsonKey(name: 'name')
        required String name,

    /// 性別
    @JsonKey(name: 'gender')
        required String gender,

    /// 身長
    @JsonKey(name: 'height')
        int? height,

    /// お酒をよく飲むか
    @JsonKey(name: "drinkFrequency")
    @DrinkFrequencyConverter()
        DrinkFrequency? drinkFrequency,

    /// タバコをよく吸うか
    @JsonKey(name: "cigaretteFrequency")
    @CigaretteFrequencyConverter()
        CigaretteFrequency? cigaretteFrequency,

    /// 自己紹介文
    @JsonKey(name: 'selfIntroduction')
        String? selfIntroduction,

    /// 職業ID
    @JsonKey(name: 'occupationId')
        int? occupationId,

    /// 居住地
    @JsonKey(name: 'addressId')
        required int addressId,

    /// タグ
    @JsonKey(name: 'tagIds')
        List<String>? tagIds,
  }) = _PostV1UsersIdProfilesRequest;

  factory PostV1UsersIdProfilesRequest.fromJson(Map<String, dynamic> json) =>
      _$PostV1UsersIdProfilesRequestFromJson(json);
}

@freezed
class PostV1UsersIdProfilesResponse with _$PostV1UsersIdProfilesResponse {
  const factory PostV1UsersIdProfilesResponse({
    @JsonKey(name: 'id') required String id,
  }) = _PostV1UsersIdProfilesResponse;

  factory PostV1UsersIdProfilesResponse.fromJson(Map<String, dynamic> json) =>
      _$PostV1UsersIdProfilesResponseFromJson(json);
}
