// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/core/base/message_room/messege_room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_v1_message_rooms_response.freezed.dart';
part 'get_v1_message_rooms_response.g.dart';

@freezed
class GetV1MessageRoomsResponse with _$GetV1MessageRoomsResponse {
  const factory GetV1MessageRoomsResponse({
    required String nextToken,
    required List<MessageRoom> messageRooms,
  }) = _GetV1MessageRoomsResponse;

  factory GetV1MessageRoomsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetV1MessageRoomsResponseFromJson(json);
}
