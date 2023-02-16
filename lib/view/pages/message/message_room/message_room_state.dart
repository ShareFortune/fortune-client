// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';

part 'message_room_state.freezed.dart';

@freezed
class MessageRoomState with _$MessageRoomState {
  const factory MessageRoomState({
    required String messageRoomId,
    required User author,
    required AsyncValue<List<Message>> messages,
  }) = _MessageRoomState;
}
