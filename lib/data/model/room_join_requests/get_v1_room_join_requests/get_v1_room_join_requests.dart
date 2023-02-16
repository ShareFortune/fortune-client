// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/core/base/room_join_request/room_join_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_v1_room_join_requests.freezed.dart';
part 'get_v1_room_join_requests.g.dart';

@freezed
class GetV1RoomJoinRequestsResponse with _$GetV1RoomJoinRequestsResponse {
  const factory GetV1RoomJoinRequestsResponse({
    @JsonKey(name: "nextToken") required String nextToken,
    @JsonKey(name: "joinRequests") required List<RoomJoinRequest> joinRequests,
  }) = _GetV1RoomJoinRequestsResponse;

  factory GetV1RoomJoinRequestsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetV1RoomJoinRequestsResponseFromJson(json);
}
