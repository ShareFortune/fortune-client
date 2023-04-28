import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_rooms_response.freezed.dart';
part 'message_rooms_response.g.dart';

@freezed
class MessageRoomsResponse with _$MessageRoomsResponse {
  const factory MessageRoomsResponse({
    required String nextToken,
    required List<MessageRoom> messageRooms,
  }) = _MessageRoomsResponse;

  factory MessageRoomsResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageRoomsResponseFromJson(json);
}

@freezed
class MessageRoom with _$MessageRoom {
  const factory MessageRoom({
    required String id,
    required String roomName,
    DateTime? lastSendAt,
    String? lastSendMessage,
    required String hostMainImageURL,
    required List<String> participantMainImageURLs,
    required int unreadCount,
  }) = _MessageRoom;

  factory MessageRoom.fromJson(Map<String, dynamic> json) =>
      _$MessageRoomFromJson(json);
}
