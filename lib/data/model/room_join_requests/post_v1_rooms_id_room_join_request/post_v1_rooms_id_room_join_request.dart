// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_v1_rooms_id_room_join_request.freezed.dart';
part 'post_v1_rooms_id_room_join_request.g.dart';

@freezed
class PostV1RoomsIdRoomJoinRequestResponse
    with _$PostV1RoomsIdRoomJoinRequestResponse {
  const factory PostV1RoomsIdRoomJoinRequestResponse({
    @JsonKey(name: 'id') required String id,
  }) = _PostV1RoomsIdRoomJoinRequestResponse;

  factory PostV1RoomsIdRoomJoinRequestResponse.fromJson(
          Map<String, dynamic> json) =>
      _$PostV1RoomsIdRoomJoinRequestResponseFromJson(json);
}
