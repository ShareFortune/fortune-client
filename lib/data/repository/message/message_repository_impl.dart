import 'dart:io';

import 'package:fortune_client/data/datasource/remote/go/message_images/message_images_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/messages/messages_data_source.dart';
import 'package:fortune_client/data/model/messages/message/message.dart';
import 'package:fortune_client/data/model/messages/messages_request/messages_request.dart';
import 'package:fortune_client/data/repository/message/message_repository.dart';
import 'package:fortune_client/util/converter/image_converter.dart';
import 'package:fortune_client/util/logger/logger.dart';

class MessagesRepositoryImpl implements MessagesRepository {
  MessagesRepositoryImpl(
    this._messagesDataSource,
    this._messageImagesDataSource,
  );

  final MessagesDataSource _messagesDataSource;
  final MessageImagesDataSource _messageImagesDataSource;

  @override
  Future<void> sendMessage({
    required String messageRoomId,
    required String text,
  }) async {
    try {
      await _messagesDataSource.send(
        messageRoomId,
        MessagesRequest(text: text).toJson(),
      );
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<void> sendImage({
    required String messageRoomId,
    required File file,
  }) async {
    try {
      await _messageImagesDataSource.send(
        messageRoomId,
        ImageMessagesRequest(
          file: await ImageConverter.toBase64(file),
        ).toJson(),
      );
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<List<Message>> fetchMessages(String messageRoomId) async {
    try {
      final result = await _messagesDataSource.fetchMessages(messageRoomId);
      return result.messages;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
