import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/repository/room/room_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final participatingRoomListViewModelProvider = StateNotifierProvider<
        ParticipatingRoomListViewModel, AsyncValue<ParticipatingRoomListState>>(
    (ref) => ParticipatingRoomListViewModel(sl())..initialize());

class ParticipatingRoomListViewModel
    extends StateNotifier<AsyncValue<ParticipatingRoomListState>> {
  ParticipatingRoomListViewModel(this._roomRepository)
      : super(const AsyncLoading());

  final RoomRepository _roomRepository;

  // Future<void> initialize() async => ParticipatingRoomListState(
  //       hostRooms: [HostRoomListItemState()],
  //       guestRooms: [GuestRoomListItemState()],
  //     );

  Future<void> initialize() async => await fetchList();

  Future<void> fetchList() async {
    state = await AsyncValue.guard(() async {
      final result = await _roomRepository.fetchListHost();

      final hostRooms = result.map((e) {
        return HostRoomListItemState.fromEntity(e);
      }).toList();

      final gestRooms = result.map((e) {
        return [];
      }).toList();

      return ParticipatingRoomListState(
        hostRooms: hostRooms,
        guestRooms: [],
      );
    });
  }

  pushRequestConfirmation(StackRouter router, int id) async {
    await router.push(RequestConfirmationRoute(id: 0));
  }
}
