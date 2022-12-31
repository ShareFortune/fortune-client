import 'package:fortune_client/data/model/message_rooms/host/message_room_host.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_room_list_state.freezed.dart';

@freezed
class MessageRoomListState with _$MessageRoomListState {
  const factory MessageRoomListState({
    required List<MessageRoomHost> host,
  }) = _MessageRoomListState;
}
