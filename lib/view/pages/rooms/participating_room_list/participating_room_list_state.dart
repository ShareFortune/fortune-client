import 'package:fortune_client/data/model/participant/participant_rooms.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'participating_room_list_state.freezed.dart';

@freezed
class ParticipatingRoomListState with _$ParticipatingRoomListState {
  const factory ParticipatingRoomListState({
    @Default(AsyncValue.loading())
        AsyncValue<List<HostRoomListItemState>> hostRooms,
    @Default([]) List<GuestRoomListItemState> guestRooms,
  }) = _ParticipatingRoomListState;
}

@freezed
class HostRoomListItemState with _$HostRoomListItemState {
  const factory HostRoomListItemState({
    @Default(0) int id,
    @Default("") String title,
    required List<String> memberIcons,
    @Default(0) int actinon,
  }) = _HostRoomListItemState;

  static HostRoomListItemState fromEntity(ParticipantRoomAsHost room) {
    return HostRoomListItemState(
      title: room.roomName,
      actinon: 0,
      memberIcons: room.participantMainImageURLs ?? [],
    );
  }
}

@freezed
class GuestRoomListItemState with _$GuestRoomListItemState {
  const factory GuestRoomListItemState({
    @Default("") String title,
    @Default("") String deadline,
    @Default("") String hostIcon,
    @Default([]) List<String> memberIcons,
    @Default("") String place,
    @Default(false) bool state,
  }) = _GuestRoomListItemState;
}
