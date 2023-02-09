// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patch_v1_room_join_requests_id.freezed.dart';
part 'patch_v1_room_join_requests_id.g.dart';

@freezed
class PatchV1RoomJoinRequestsIdResponse
    with _$PatchV1RoomJoinRequestsIdResponse {
  const factory PatchV1RoomJoinRequestsIdResponse({
    @JsonKey(name: "id") required String id,
  }) = _PatchV1RoomJoinRequestsIdResponse;

  factory PatchV1RoomJoinRequestsIdResponse.fromJson(
          Map<String, dynamic> json) =>
      _$PatchV1RoomJoinRequestsIdResponseFromJson(json);
}
