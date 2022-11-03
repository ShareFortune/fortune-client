import 'package:fortune_client/domain/entities/models/room/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_list_state.freezed.dart';

@freezed
class RoomListState with _$RoomListState {
  const factory RoomListState({
    @Default([]) List<RoomListItem> rooms,
  }) = _RoomListState;
}

@freezed
class RoomListItem with _$RoomListItem {
  const factory RoomListItem({
    @Default("") String hostName,
    @Default("") String createdAt,
    @Default("") String hostUserIcon,
    @Default("") String roomTitle,
    @Default([]) List<String> maleUserIcons,
    @Default([]) List<String> femaleUserIcons,
    @Default("") String holdingPlace,
    @Default(4) int maxNumOfParticipants,
  }) = _RoomListItem;

  static RoomListItem fromEntity(Room room) {
    return RoomListItem(
      hostName: room.hostUser.name,
      createdAt: room.createdAt.toString(),
      hostUserIcon: room.hostUser.mainImageUrl,
      roomTitle: room.name,
      maleUserIcons: room.members.map((e) => e.mainImageUrl).toList(),
      femaleUserIcons: room.members.map((e) => e.mainImageUrl).toList(),
      holdingPlace: "東京都",
      maxNumOfParticipants: room.members.length,
    );
  }
}
