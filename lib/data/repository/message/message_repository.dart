import 'package:fortune_client/data/model/base/message/message.dart';

abstract class MessagesRepository {
  /// メッセージ送信
  Future<void> sendMessage({
    required String messageRoomId,
    required String text,
  });

  /// メッセージ取得
  Future<List<Message>> getMessages(String messageRoomId);
}
