import 'package:fortune_client/data/model/message_rooms/base/message_rooms.dart';
import 'package:fortune_client/data/model/message_rooms/host/message_room_host.dart';

abstract class MessageRoomsDataSource {
  Future<MessageRooms<MessageRoomHost>> fetchMessageRoomsHost();
}
