import 'package:fortune_client/data/model/messages/message_rooms_response/message_rooms_response.dart';

abstract class MessageRoomsRepository {
  Future<String> create();
  Future<String> update();
  Future<List<MessageRoom>> fetchHost();
  Future<List<MessageRoom>> fetchGuest();
}
