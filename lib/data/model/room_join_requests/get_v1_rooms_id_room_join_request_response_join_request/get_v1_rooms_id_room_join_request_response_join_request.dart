// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_v1_rooms_id_room_join_request_response_join_request.freezed.dart';
part 'get_v1_rooms_id_room_join_request_response_join_request.g.dart';

@freezed
class GetV1RoomsIdRoomJoinRequestResponseJoinRequest
    with _$GetV1RoomsIdRoomJoinRequestResponseJoinRequest {
  const factory GetV1RoomsIdRoomJoinRequestResponseJoinRequest({
    /// ルームID
    @JsonKey(name: "userId") required String userId,

    /// ルームネーム
    @JsonKey(name: "name") required String name,

    /// リクエストユーザーの画像URL
    @JsonKey(name: "userImageURL") required String userImageURL,
  }) = _GetV1RoomsIdRoomJoinRequestResponseJoinRequest;

  factory GetV1RoomsIdRoomJoinRequestResponseJoinRequest.fromJson(
          Map<String, dynamic> json) =>
      _$GetV1RoomsIdRoomJoinRequestResponseJoinRequestFromJson(json);
}
