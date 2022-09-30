import '../const/types.dart';
import '../enum/room_status.dart';

class MessageRoom {
  final MessageRoomID id;
  final RoomID roomId;
  final List<UserID> userIds;
  final RoomStatus status;

  MessageRoom({
    required this.id,
    required this.roomId,
    required this.userIds,
    required this.status,
  });
}
