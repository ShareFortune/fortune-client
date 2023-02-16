// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/core/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/core/enum/drink_frequency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_v1_users_id_profiles.freezed.dart';
part 'post_v1_users_id_profiles.g.dart';

@freezed
class PostV1UsersIdProfilesRequest with _$PostV1UsersIdProfilesRequest {
  const factory PostV1UsersIdProfilesRequest({
    @freezed @JsonKey(name: 'files') required Map<String, dynamic> files,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'gender') required String gender,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: "drinkFrequency")
    @DrinkFrequencyConverter()
        DrinkFrequency? drinkFrequency,
    @JsonKey(name: "cigaretteFrequency")
    @CigaretteFrequencyConverter()
        CigaretteFrequency? cigaretteFrequency,
    @JsonKey(name: 'selfIntroduction') String? selfIntroduction,
    @JsonKey(name: 'occupationId') int? occupationId,
    @JsonKey(name: 'addressId') required int addressId,
    @JsonKey(name: 'tagIds') List<String>? tagIds,
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
