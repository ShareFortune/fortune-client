import 'package:fortune_client/data/model/room/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_list_state.freezed.dart';

@freezed
class RoomListState with _$RoomListState {
  const factory RoomListState({
    @Default([]) List<RoomListItemState> rooms,
  }) = _RoomListState;
}

@freezed
class RoomListItemState with _$RoomListItemState {
  const factory RoomListItemState({
    @Default("") String title,
    @Default("") String deadline,
    @Default("") String hostIcon,
    @Default([]) List<String> memberIcons,
    @Default("") String place,
  }) = _RoomListItemState;

  static RoomListItemState fromEntity(Room room) {
    return RoomListItemState(
      title: room.roomName,
      hostIcon: room.hostMainImageURL,
      memberIcons: room.participantMainImageURLs,
      place: room.addressEntity.toString(),
    );
  }
}
