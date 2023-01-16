import 'package:fortune_client/data/model/message_rooms/host/message_room_host.dart';

abstract class MessageRepository {
  Future<String> create();
  Future<String> update();
  Future<List<MessageRoomHost>> fetchRoomsHost();
}
