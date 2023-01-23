// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/form/profile_files_request/profile_files_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_update_request.freezed.dart';
part 'profile_update_request.g.dart';

@freezed
class ProfileUpdateRequest with _$ProfileUpdateRequest {
  const factory ProfileUpdateRequest({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "gender") required String gender,
    @JsonKey(name: "addressId") required int addressId,
    @JsonKey(name: "files") required ProfileFilesRequest files,
    @JsonKey(name: "height") required int? height,
    @JsonKey(name: "drinkFrequency") required String? drinkFrequency,
    @JsonKey(name: "cigaretteFrequency") required String? cigaretteFrequency,
    @JsonKey(name: "selfIntroduction") required String? selfIntroduction,
    @JsonKey(name: "occupationId") required int? occupationId,
    @JsonKey(name: "tagIds") required List<String>? tagIds,
  }) = _ProfileUpdateRequest;

  factory ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateRequestFromJson(json);
}
