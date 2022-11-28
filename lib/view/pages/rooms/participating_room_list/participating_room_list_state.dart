import 'package:fortune_client/data/model/host_room/host_room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'participating_room_list_state.freezed.dart';

@freezed
class ParticipatingRoomListState with _$ParticipatingRoomListState {
  const factory ParticipatingRoomListState({
    required List<HostRoomListItemState> hostRooms,
    required List<GuestRoomListItemState> guestRooms,
  }) = _ParticipatingRoomListState;

  // static ParticipatingRoomListState fromEntity(
  //   HostRoomList rooms,
  // ) {
  //   return ParticipatingRoomListState(
  //     guestRooms: [],
  //     hostRooms: rooms.roomsEntity.map((e) {
  //       return HostRoomListItemState.fromEntity(e);
  //     }).toList(),
  //   );
  // }
}

@freezed
class HostRoomListItemState with _$HostRoomListItemState {
  const factory HostRoomListItemState({
    @Default("") String title,
    @Default([]) List<String> memberIcons,
    @Default(0) int actinon,
  }) = _HostRoomListItemState;

  static HostRoomListItemState fromEntity(HostRoom room) {
    return HostRoomListItemState(
      title: room.roomName,
      actinon: room.action,
      memberIcons: room.participantMainImageURLs,
    );
  }
}

@freezed
class GuestRoomListItemState with _$GuestRoomListItemState {
  const factory GuestRoomListItemState({
    @Default("") String hostName,
    @Default("") String createdAt,
    @Default("") String hostUserIcon,
    @Default("") String title,
    @Default([]) List<String> maleUserIcons,
    @Default([]) List<String> femaleUserIcons,
    @Default("") String holdingPlace,
    @Default(4) int maxNumOfParticipants,
  }) = _GuestRoomListItemState;
}
