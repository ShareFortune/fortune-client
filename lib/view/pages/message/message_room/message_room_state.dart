// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';

part 'message_room_state.freezed.dart';

// @freezed
// class MessageRoomState with _$MessageRoomState {
//   const factory MessageRoomState({
//     /// 送信するメッセージルームのID
//     required String messageRoomId,

//     /// My user info
//     required MessageFromUser myInfo,

//     /// 取得メッセージリスト
//     required AsyncValue<List<Message>> messages,
//   }) = _MessageRoomState;
// }

@freezed
class MessageRoomState with _$MessageRoomState {
  const factory MessageRoomState({
    required String messageRoomId,
    required User myUserInfo,
    required AsyncValue<List<Message>> messages,
  }) = _MessageRoomState;
}


// @freezed
// class FromUserState with _$FromUserState {
//   const FromUserState._();
//   const factory FromUserState(
//     MessageFromUser user,
//   ) = _FromUserState;

//   chat_types.User convert() {
//     return chat_types.User(
//       id: user.id,
//       firstName: user.name,
//       imageUrl: user.mainImageURL,
//     );
//   }
// }

// @freezed
// class MessageState with _$MessageState {
//   const MessageState._();
//   const factory MessageState(
//     Message message,
//   ) = _MessageState;

//   chat_types.Message convert() {
//     return chat_types.TextMessage(
//       id: message.id,
//       text: message.text,
//       createdAt: message.sendAt.millisecondsSinceEpoch,
//       author: chat_types.User(
//         id: message.fromUser.id,
//         firstName: message.fromUser.name,
//         imageUrl: message.fromUser.mainImageURL,
//       ),
//     );
//   }
// }
