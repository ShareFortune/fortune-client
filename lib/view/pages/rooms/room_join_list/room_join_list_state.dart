import 'package:fortune_client/data/model/room/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_join_list_state.freezed.dart';

@freezed
class RoomJoinListState with _$RoomJoinListState {
  const factory RoomJoinListState({
    required List<RoomHostListItemState> hostRooms,
    required List<RoomGuestListItemState> guestRooms,
  }) = _RoomJoinListState;
}

@freezed
class RoomHostListItemState with _$RoomHostListItemState {
  const factory RoomHostListItemState({
    @Default("") String createdAt,
    @Default("") String title,
    @Default([]) List<String> maleUserIcons,
    @Default([]) List<String> femaleUserIcons,
    @Default("") String holdingPlace,
    @Default(4) int maxNumOfParticipants,
  }) = _RoomHostListItemState;

  static RoomHostListItemState fromEntity(Room room) {
    return RoomHostListItemState(
      createdAt: room.createdAt.toString(),
      title: room.name,
      maleUserIcons: room.members.map((e) => e.mainImageUrl).toList(),
      femaleUserIcons: room.members.map((e) => e.mainImageUrl).toList(),
      holdingPlace: "東京都",
      maxNumOfParticipants: room.members.length,
    );
  }
}

@freezed
class RoomGuestListItemState with _$RoomGuestListItemState {
  const factory RoomGuestListItemState({
    @Default("") String hostName,
    @Default("") String createdAt,
    @Default("") String hostUserIcon,
    @Default("") String title,
    @Default([]) List<String> maleUserIcons,
    @Default([]) List<String> femaleUserIcons,
    @Default("") String holdingPlace,
    @Default(4) int maxNumOfParticipants,
  }) = _RoomGuestListItemState;

  static RoomGuestListItemState fromEntity(Room room) {
    return RoomGuestListItemState(
      hostName: room.hostUser.name,
      createdAt: room.createdAt.toString(),
      hostUserIcon: room.hostUser.mainImageUrl,
      title: room.name,
      maleUserIcons: room.members.map((e) => e.mainImageUrl).toList(),
      femaleUserIcons: room.members.map((e) => e.mainImageUrl).toList(),
      holdingPlace: "東京都",
      maxNumOfParticipants: room.members.length,
    );
  }
}
