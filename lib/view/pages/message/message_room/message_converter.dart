// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_chat_types/flutter_chat_types.dart' as chat_types;
import 'package:fortune_client/data/model/messages/message/message.dart';
import 'package:fortune_client/data/model/messages/message_from_user/message_from_user.dart';
import 'package:uuid/uuid.dart';
import 'package:file/memory.dart';
import 'package:http/http.dart' as http;

/// [chat_types.User]へのコンバーター
class MessageConverter {
  /// [MessageFromUser] -> [chat_types.User]
  static chat_types.User toUser(MessageFromUser user) {
    return chat_types.User(
      id: user.id,
      firstName: user.name,
      imageUrl: user.mainImageURL,
    );
  }

  /// [Message] -> [chat_types.Message]
  /// [chat_types.TextMessage] or [chat_types.ImageMessage]
  static Future<chat_types.Message> toMessage(Message message) async {
    return message.messageIamageURL != null
        ? await toImageMessage(message) // 画像データ
        : toTextMessage(message); // テキストデータ
  }

  /// [Message] -> [chat_types.TextMessage]
  static chat_types.TextMessage toTextMessage(Message message) {
    return chat_types.TextMessage(
      id: message.id,
      author: toUser(message.fromUser),
      createdAt: message.sentAt.millisecondsSinceEpoch,
      text: message.text,
    );
  }

  /// [String] -> [chat_types.TextMessage]
  static chat_types.TextMessage toTextMessageByString(
    String text,
    chat_types.User user,
  ) {
    return chat_types.TextMessage(
      id: const Uuid().v4(),
      author: user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      text: text,
    );
  }

  /// [Message] -> [chat_types.ImageMessage]
  static Future<chat_types.ImageMessage> toImageMessage(
    Message message,
  ) async {
    final uri = message.messageIamageURL!;
    File file = MemoryFileSystem().file('tmp.file');
    file.writeAsBytesSync((await http.get(Uri.parse(uri))).bodyBytes);
    final bytes = await file.readAsBytes();
    final image = await decodeImageFromList(bytes);

    return chat_types.ImageMessage(
      id: message.id,
      uri: uri,
      name: uri,
      author: toUser(message.fromUser),
      createdAt: message.sentAt.millisecondsSinceEpoch,
      size: bytes.length,
      height: image.height.toDouble(),
      width: image.width.toDouble(),
    );
  }

  /// [MessageFromUser, File] -> [chat_types.ImageMessage]
  static Future<chat_types.ImageMessage> toImageMessageFromFile(
    chat_types.User user,
    File file,
  ) async {
    final bytes = await file.readAsBytes();
    final image = await decodeImageFromList(bytes);
    return chat_types.ImageMessage(
      id: const Uuid().v4(),
      name: file.path,
      author: user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      uri: file.path,
      size: bytes.length,
      width: image.width.toDouble(),
      height: image.height.toDouble(),
    );
  }
}
