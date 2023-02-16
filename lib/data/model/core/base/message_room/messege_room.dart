// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'messege_room.freezed.dart';
part 'messege_room.g.dart';

@freezed
class MessageRoom with _$MessageRoom {
  const factory MessageRoom({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'roomName') required String roomName,
    @JsonKey(name: 'lastSentAt') DateTime? lastSendAt,
    @JsonKey(name: 'lastSendMessage') String? lastSendMessage,
    @JsonKey(name: 'hostMainImageURL') required String hostMainImageURL,
    @JsonKey(name: 'participantMainImageURLs')
        required List<String> participantMainImageURLs,
    @JsonKey(name: 'unreadCount') required int unreadCount,
  }) = _MessageRoom;

  factory MessageRoom.fromJson(Map<String, dynamic> json) =>
      _$MessageRoomFromJson(json);
}
