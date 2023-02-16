import 'package:fortune_client/data/model/base/message/message.dart';

abstract class MessagesRepository {
  sendMessage(String messageRoomId);
  Future<List<Message>> getMessages(String messageRoomId);
}
