// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/base/profiles_files/profiles_files.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patch_v1_rooms_id.freezed.dart';
part 'patch_v1_rooms_id.g.dart';

@freezed
class PatchV1RoomsIdRequest with _$PatchV1RoomsIdRequest {
  factory PatchV1RoomsIdRequest({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "gender") required String gender,
    @JsonKey(name: "addressId") required int addressId,
    @JsonKey(name: "files") required ProfilesFiles files,
    @JsonKey(name: "height") required int? height,
    @JsonKey(name: "drinkFrequency") required String? drinkFrequency,
    @JsonKey(name: "cigaretteFrequency") required String? cigaretteFrequency,
    @JsonKey(name: "selfIntroduction") required String? selfIntroduction,
    @JsonKey(name: "occupationId") required int? occupationId,
    @JsonKey(name: "tagIds") required List<String>? tagIds,
  }) = _PatchV1RoomsIdRequest;

  factory PatchV1RoomsIdRequest.fromJson(Map<String, dynamic> json) =>
      _$PatchV1RoomsIdRequestFromJson(json);
}
