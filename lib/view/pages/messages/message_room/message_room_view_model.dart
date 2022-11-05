// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/messages/message_room/message_room_state.dart';
import 'package:uuid/uuid.dart';
import 'package:mime/mime.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;

final messageRoomViewModelProvider =
    StateNotifierProvider<MessageRoomViewModel, AsyncValue<MessageRoomState>>(
        (ref) {
  return MessageRoomViewModel(ref)..initialize();
});

class MessageRoomViewModel extends StateNotifier<AsyncValue<MessageRoomState>> {
  MessageRoomViewModel(this._ref)
      : super(const AsyncValue<MessageRoomState>.loading());

  final Ref _ref;

  initialize() async {
    await fetch();
  }

  fetch() async {
    state = await AsyncValue.guard(() async {
      return MessageRoomState(messages: await loadMessages());
    });
  }

  types.User user() =>
      const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');

  loadMessages() async {
    final response =
        await rootBundle.loadString('assets/messages/message.json');
    final messages = (jsonDecode(response) as List)
        .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
        .toList();

    return messages;
  }

  void handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: user(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  _addMessage(types.Message message) {
    final data = state.value;
    if (data != null) {
      data.messages.insert(0, message);
      state = AsyncValue.data(data);
    }
  }

  void handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null && result.files.single.path != null) {
      final message = types.FileMessage(
        author: user(),
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        mimeType: lookupMimeType(result.files.single.path!),
        name: result.files.single.name,
        size: result.files.single.size,
        uri: result.files.single.path!,
      );

      _addMessage(message);
    }
  }

  void handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final message = types.ImageMessage(
        author: user(),
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

  void handleMessageTap(BuildContext _, types.Message message) async {
    final data = state.value;
    if (data == null) return;
    if (message is types.FileMessage) {
      var localPath = message.uri;

      if (message.uri.startsWith('http')) {
        try {
          final index =
              data.messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (data.messages[index] as types.FileMessage).copyWith(
            isLoading: true,
          );

          data.messages[index] = updatedMessage;
          state = AsyncData(data);

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
              data.messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (data.messages[index] as types.FileMessage).copyWith(
            isLoading: null,
          );

          data.messages[index] = updatedMessage;
          state = AsyncData(data);
        }
      }

      await OpenFilex.open(localPath);
    }
  }

  void handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final data = state.value;
    if (data == null) return;
    final index =
        data.messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (data.messages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    data.messages[index] = updatedMessage;
    state = AsyncData(data);
  }
}
