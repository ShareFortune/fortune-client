import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_room_list_state.freezed.dart';

@freezed
class MessageRoomListState with _$MessageRoomListState {
  const factory MessageRoomListState({
    @Default([]) List<MessageRoomListItemState> messageRooms,
  }) = _MessageRoomListState;
}

@freezed
class MessageRoomListItemState with _$MessageRoomListItemState {
  const factory MessageRoomListItemState({
    required DateTime postedAt,
    required String title,
    required String content,
    required String userIcon,
    required int notifications,
  }) = _MessageRoomListItemState;
}
