import 'package:fortune_client/data/model/base/message_room/messege_room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'message_room_list_state.freezed.dart';

@freezed
class MessageRoomListState with _$MessageRoomListState {
  const factory MessageRoomListState({
    @Default(AsyncValue.loading()) AsyncValue<StatusMessageRoomListState> host,
    @Default(AsyncValue.loading()) AsyncValue<StatusMessageRoomListState> guest,
  }) = _MessageRoomListState;
}

@freezed
class StatusMessageRoomListState with _$StatusMessageRoomListState {
  const StatusMessageRoomListState._();
  const factory StatusMessageRoomListState({
    required List<MessageRoomListItemState> messageRooms,
    required List<MessageRoomListItemState> newMessageRooms,
  }) = _StatusMessageRoomListState;

  bool isEmpty() {
    return messageRooms.isEmpty && newMessageRooms.isEmpty;
  }
}

@freezed
class MessageRoomListItemState with _$MessageRoomListItemState {
  const factory MessageRoomListItemState({
    required String id,
    required String roomName,
    required String? lastSendAt,
    required String? lastSendMessage,
    required String hostMainImageURL,
    required int unreadCount,
  }) = _MessageRoomListItemState;

  static MessageRoomListItemState from(MessageRoom messageRoom) {
    return MessageRoomListItemState(
      id: messageRoom.id,
      roomName: messageRoom.roomName,
      lastSendAt: messageRoom.lastSendAt,
      lastSendMessage: messageRoom.lastSendMessage,
      hostMainImageURL: messageRoom.hostMainImageURL,
      unreadCount: messageRoom.unreadCount,
    );
  }
}
