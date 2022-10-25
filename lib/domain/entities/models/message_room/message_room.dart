import 'package:fortune_client/domain/entities/const/types.dart';
import 'package:fortune_client/domain/entities/enum/room_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_room.freezed.dart';
part 'message_room.g.dart';

@freezed
class MessageRoom with _$MessageRoom {
  const factory MessageRoom({
    required MessageRoomID id,
    required RoomID roomId,
    required List<UserID> userIds,
    required RoomStatus status,
  }) = _MessageRoom;

  factory MessageRoom.fromJson(Map<String, dynamic> json) =>
      _$MessageRoomFromJson(json);
}
