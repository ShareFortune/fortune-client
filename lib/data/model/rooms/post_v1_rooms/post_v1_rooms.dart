// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/data/model/core/enum/age_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_v1_rooms.freezed.dart';
part 'post_v1_rooms.g.dart';

@freezed
class PostV1RoomsRequest with _$PostV1RoomsRequest {
  factory PostV1RoomsRequest({
    @JsonKey(name: 'roomName') required String roomName,
    @JsonKey(name: 'applicationDeadline') required String applicationDeadline,
    @JsonKey(name: 'membersNum') required int membersNum,
    @JsonKey(name: 'ageGroup') @AgeGroupConverter() required AgeGroup ageGroup,
    @JsonKey(name: 'addressId') required int addressId,
    @JsonKey(name: 'explanation') required String explanation,
    @JsonKey(name: 'tagIds') List<Tag>? tagIds,
  }) = _PostV1RoomsRequest;

  factory PostV1RoomsRequest.fromJson(Map<String, dynamic> json) =>
      _$PostV1RoomsRequestFromJson(json);
}
