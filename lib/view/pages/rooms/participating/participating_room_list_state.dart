import 'package:fortune_client/data/model/enum/room_join_request_status.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/data/model/members_num/members_num.dart';
import 'package:fortune_client/data/model/participant/guest/participant_room_as_guest.dart';
import 'package:fortune_client/data/model/participant/host/participant_room_as_host.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'participating_room_list_state.freezed.dart';

@freezed
class ParticipatingRoomListState with _$ParticipatingRoomListState {
  const factory ParticipatingRoomListState({
    @Default(AsyncLoading()) AsyncValue<List<ParticipantRoomAsHost>> host,
    @Default(AsyncLoading()) AsyncValue<List<ParticipantRoomAsGuest>> guest,
  }) = _ParticipatingRoomListState;
}

// @freezed
// class ParticipatingRoomListStateItem with _$ParticipatingRoomListStateItem {
//   factory ParticipatingRoomListStateItem.host({
//     required String id,
//     required String title,
//     required String address,
//     required List<String> memberIcons,
//     required MembersNum membersNum,
//     required int participationRequestsNum,
//     required RoomStatus roomStatus,
//   }) = HostState;

//   factory ParticipatingRoomListStateItem.guest({
//     required String id,
//     required String title,
//     required String address,
//     required List<String> memberIcons,
//     required MembersNum membersNum,
//     required RoomStatus roomStatus,
//     required RoomJoinRequestStatus requestStatus,
//   }) = GuestState;

//   // static HostState fromHost(ParticipantRoomAsHost room) {
//   //   return HostState(
//   //     id: room.id,
//   //     title: room.roomName,
//   //     address: "取得したアドレス",
//   //     memberIcons: room.participantMainImageURLs ?? List.empty(),
//   //     membersNum: room.membersNum,
//   //     participationRequestsNum: room.joinRequestsCount,
//   //     roomStatus: room.status,
//   //   );
//   // }

//   // static GuestState fromGuest(ParticipantRoomAsGuest room) {
//   //   return GuestState(
//   //     id: room.id,
//   //     title: room.roomName,
//   //     address: room.address.text,
//   //     memberIcons: [room.hostMainImageURL, ...?room.participantMainImageURLs],
//   //     membersNum: room.membersNum,
//   //     roomStatus: room.roomStatus,
//   //     requestStatus: room.joinRequestStatus,
//   //   );
//   // }
// }
