import 'package:fortune_client/data/model/base/message_room/messege_room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'message_room_list_state.freezed.dart';

@freezed
class MessageRoomListState with _$MessageRoomListState {
  const factory MessageRoomListState({
    required AsyncValue<List<MessageRoom>> host,
    required AsyncValue<List<MessageRoom>> guest,
  }) = _MessageRoomListState;
}
