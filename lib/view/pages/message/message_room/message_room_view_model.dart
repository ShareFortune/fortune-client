// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:uuid/uuid.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/message/message_room/message_converter.dart';
import 'package:fortune_client/view/pages/message/message_room/message_room_state.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as chat_types;

final messageRoomViewModelProvider = StateNotifierProvider.family<
    MessageRoomViewModel, MessageRoomState, String>((_, messageRoomId) {
  return MessageRoomViewModel(
    MessageRoomState(
      messageRoomId: messageRoomId,
      author: chat_types.User(id: const Uuid().v4()),
      messages: const AsyncLoading(),
    ),
  )..initialize();
});

class MessageRoomViewModel extends StateNotifier<MessageRoomState> {
  MessageRoomViewModel(super.state);

  initialize() => loadMessages();

  /// メッセージ読み込み
  loadMessages() async {
    final List<chat_types.Message> messages = [];

    state = state.copyWith(
      messages: await AsyncValue.guard(() async {
        final data = await Repository.messages.getMessages(state.messageRoomId);
        for (var message in data) {
          messages.add(await MessageConverter.toMessage(message));
        }
        return messages;
      }),
    );
  }

  /// メッセージ送信・テキスト
  void handleSendPressed(chat_types.PartialText message) {
    /// サーバーに送信
    Repository.messages.sendMessage(
      messageRoomId: state.messageRoomId,
      text: message.text,
    );
    _addMessage(
      MessageConverter.toTextMessageByString(
        message.text,
        state.author,
      ),
    );
  }

  /// 画像データ選択ハンドラ
  void handleImageSelection(File file) async {
    /// サーバーに送信
    Repository.messages.sendImage(
      messageRoomId: state.messageRoomId,
      file: file,
    );
    _addMessage(
      await MessageConverter.toImageMessageFromFile(
        state.author,
        file,
      ),
    );
  }

  /// Stateに[chat_types.Message]を追加
  _addMessage(chat_types.Message message) async {
    state = state.copyWith(
      messages: await AsyncValue.guard(() async {
        return [message, ...?state.messages.value];
      }),
    );
  }

  /// [chat_types.Message.id]で[chat_types.Message]を検索
  int _findMessageById(String id) {
    return state.messages.value?.indexWhere((e) => e.id == id) ?? -1;
  }

  /// 前データ読み込み
  void handlePreviewDataFetched(
    chat_types.TextMessage message,
    chat_types.PreviewData previewData,
  ) {
    final messages = state.messages.value;
    if (messages == null) return;
    final messageIndex = _findMessageById(message.id);
    final updatedMessage = messages[messageIndex] as chat_types.TextMessage;
    messages[messageIndex] = updatedMessage.copyWith(previewData: previewData);
    state = state.copyWith(messages: AsyncData(messages));
  }
}
