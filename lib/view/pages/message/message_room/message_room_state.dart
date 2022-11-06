// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_room_state.freezed.dart';

@freezed
class MessageRoomState with _$MessageRoomState {
  const factory MessageRoomState({
    @Default('82091008-a484-4a89-ae75-a22bf8d6f3ac') String userId,
    required List<Message> messages,
  }) = _MessageRoomState;
}
