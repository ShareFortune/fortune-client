// ignore_for_file: depend_on_referenced_packages

import 'package:fortune_client/data/model/base/message/message.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as chat;
import 'package:fortune_client/data/model/base/message_from_user/message_from_user.dart';

class MessageConverter {
  /// [MessageFromUser] -> [chat.User]
  static chat.User convertToUser(MessageFromUser user) {
    return chat.User(
      id: user.id,
      firstName: user.name,
      imageUrl: user.mainImageURL,
    );
  }

  /// [Message] -> [chat.Message]
  static chat.Message convertToTextMessage(Message message) {
    return chat.TextMessage(
      id: message.id,
      author: chat.User(id: message.fromUser.id),
      createdAt: message.sendAt.millisecondsSinceEpoch,
      text: message.text,
    );
  }
}
