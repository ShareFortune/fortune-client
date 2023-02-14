import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_type.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final participatingRoomListViewModelProvider = StateNotifierProvider.family<
    ParticipatingRoomListViewModel,
    ParticipatingRoomListState,
    ParticipatingType>(
  (ref, type) {
    return ParticipatingRoomListViewModel(
      ParticipatingRoomListState(
        participatingType: type,
        rooms: const AsyncLoading(),
      ),
    )..initialize();
  },
);

class ParticipatingRoomListViewModel
    extends StateNotifier<ParticipatingRoomListState> {
  ParticipatingRoomListViewModel(super.state);

  initialize() => getRooms();

  Future<void> getRooms() async {
    state = state.copyWith(
      rooms: await AsyncValue.guard(() async {
        switch (state.participatingType) {
          case ParticipatingType.host:
            return await Repository.rooms.getRoomsToParticipateAsHost();
          case ParticipatingType.guest:
            return await Repository.rooms.getRoomsToParticipateAsGuest();

          /// TODO
          case ParticipatingType.all:
            return await Repository.rooms.getRoomsToParticipateAsGuest();
        }
      }),
    );
  }
}
