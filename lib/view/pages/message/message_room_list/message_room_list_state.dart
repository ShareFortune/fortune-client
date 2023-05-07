import 'package:fortune_client/data/model/messages/message_rooms_response/message_rooms_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'message_room_list_state.freezed.dart';

@freezed
class MessageRoomListState with _$MessageRoomListState {
  const factory MessageRoomListState({
    @Default(false) bool isFetchingNextHostPage,
    @Default(false) bool isFetchingNextGuestPage,
    required List<MessageRoom> host,
    required List<MessageRoom> guest,
  }) = _MessageRoomListState;
}
