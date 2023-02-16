import 'dart:io';

import 'package:fortune_client/data/model/core/base/message/message.dart';

abstract class MessagesRepository {
  /// メッセージ送信
  Future<void> sendMessage({
    required String messageRoomId,
    required String text,
  });

  /// 画像送信
  Future<void> sendImage({
    required String messageRoomId,
    required File file,
  });

  /// メッセージ取得
  Future<List<Message>> getMessages(String messageRoomId);
}
