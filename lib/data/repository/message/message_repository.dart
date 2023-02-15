import 'package:fortune_client/data/model/base/message/message.dart';

abstract class MessagesRepository {
  sendMessage();
  Future<List<Message>> getMessages();
}
