import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_room_host.freezed.dart';
part 'message_room_host.g.dart';

@freezed
class MessageRoomHost with _$MessageRoomHost {
  const factory MessageRoomHost({
    required String id,
    required String roomName,
    required String lastSendAt,
    required String lastSendMessage,
    required String hostMainImageURL,
    required List<String> participantMainImageURLs,
    required int unreadCount,
  }) = _MessageRoomHost;

  factory MessageRoomHost.fromJson(Map<String, dynamic> json) =>
      _$MessageRoomHostFromJson(json);
}
