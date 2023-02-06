// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/base/profiles_files/profiles_files.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patch_v1_profiles_id.freezed.dart';
part 'patch_v1_profiles_id.g.dart';

@freezed
class PatchV1ProfilesIdRequest with _$PatchV1ProfilesIdRequest {
  const factory PatchV1ProfilesIdRequest({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "gender") @GenderConverter() required Gender gender,
    @JsonKey(name: "addressId") required int addressId,
    @JsonKey(name: "files") required ProfilesFiles files,
    @JsonKey(name: "height") required int? height,
    @JsonKey(name: "drinkFrequency")
    @DrinkFrequencyConverter()
        required DrinkFrequency? drinkFrequency,
    @JsonKey(name: "cigaretteFrequency")
    @CigaretteFrequencyConverter()
        required CigaretteFrequency? cigaretteFrequency,
    @JsonKey(name: "selfIntroduction") required String? selfIntroduction,
    @JsonKey(name: "occupationId") required int? occupationId,
    @JsonKey(name: "tagIds") required List<String>? tagIds,
  }) = _PatchV1ProfilesIdRequest;

  factory PatchV1ProfilesIdRequest.fromJson(Map<String, dynamic> json) =>
      _$PatchV1ProfilesIdRequestFromJson(json);
}

@freezed
class PatchV1ProfilesIdResponse with _$PatchV1ProfilesIdResponse {
  const factory PatchV1ProfilesIdResponse({
    @JsonKey(name: 'id') required String id,
  }) = _PatchV1ProfilesIdResponse;

  factory PatchV1ProfilesIdResponse.fromJson(Map<String, dynamic> json) =>
      _$PatchV1ProfilesIdResponseFromJson(json);
}
