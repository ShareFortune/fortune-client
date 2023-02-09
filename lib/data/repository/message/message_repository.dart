import 'package:fortune_client/data/model/base/message_room/messege_room.dart';

abstract class MessageRepository {
  Future<String> create();
  Future<String> update();
  Future<List<MessageRoom>> fetchHost();
}
