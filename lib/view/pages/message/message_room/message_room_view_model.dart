// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fortune_client/data/model/base/message/message.dart';
import 'package:fortune_client/data/model/base/message_from_user/message_from_user.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/util/converter/message_converter.dart';
import 'package:fortune_client/view/pages/message/message_room/message_room_state.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as chat_types;
import 'package:http/http.dart' as http;
import 'package:open_filex/open_filex.dart';

final messageRoomViewModelProvider = StateNotifierProvider.family<
    MessageRoomViewModel, MessageRoomState, String>((_, messageRoomId) {
  return MessageRoomViewModel(
    MessageRoomState(
      messageRoomId: messageRoomId,
      myUserInfo: chat_types.User(id: const Uuid().v4()),
      messages: const AsyncLoading(),
    ),
  )..initialize();
});

class MessageRoomViewModel extends StateNotifier<MessageRoomState> {
  MessageRoomViewModel(super.state);

  initialize() => loadMessages();

  /// メッセージユーザーデータ変換
  chat_types.User formUser(MessageFromUser user) {
    return MessageConverter.convertToUser(user);
  }

  /// メッセージデータ変換
  chat_types.Message message(Message message) {
    return MessageConverter.convertToTextMessage(message);
  }

  loadMessages() async {
    state = state.copyWith(
      messages: await AsyncValue.guard(() async {
        final messages =
            await Repository.messages.getMessages(state.messageRoomId);
        return messages.map((e) => message(e)).toList();
      }),
    );
  }

  void handleSendPressed(chat_types.PartialText message) {
    final textMessage = chat_types.TextMessage(
      author: state.myUserInfo,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  _addMessage(chat_types.Message message) async {
    state = state.copyWith(
      messages: await AsyncValue.guard(() async {
        return [message, ...?state.messages.value];
      }),
    );
  }

  /// 画像データ選択ハンドラ
  void handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final message = chat_types.ImageMessage(
        author: state.myUserInfo,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4(),
        name: result.name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );

      _addMessage(message);
    }
  }

  void handleMessageTap(_, chat_types.Message message) async {
    final messages = state.messages.value;
    if (messages == null) return;
    if (message is chat_types.FileMessage) {
      var localPath = message.uri;

      if (message.uri.startsWith('http')) {
        try {
          final index =
              messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (messages[index] as chat_types.FileMessage).copyWith(
            isLoading: true,
          );

          messages[index] = updatedMessage;
          state = state.copyWith(messages: AsyncData(messages));

          final client = http.Client();
          final request = await client.get(Uri.parse(message.uri));
          final bytes = request.bodyBytes;
          final documentsDir = (await getApplicationDocumentsDirectory()).path;
          localPath = '$documentsDir/${message.name}';

          if (!File(localPath).existsSync()) {
            final file = File(localPath);
            await file.writeAsBytes(bytes);
          }
        } finally {
          final index =
              messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (messages[index] as chat_types.FileMessage).copyWith(
            isLoading: null,
          );

          messages[index] = updatedMessage;
          state = state.copyWith(messages: AsyncData(messages));
        }
      }

      await OpenFilex.open(localPath);
    }
  }

  void handlePreviewDataFetched(
    chat_types.TextMessage message,
    chat_types.PreviewData previewData,
  ) {
    final messages = state.messages.value;

    if (messages == null) return;
    final index = messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (messages[index] as chat_types.TextMessage).copyWith(
      previewData: previewData,
    );

    messages[index] = updatedMessage;
    state = state.copyWith(messages: AsyncData(messages));
  }
}
