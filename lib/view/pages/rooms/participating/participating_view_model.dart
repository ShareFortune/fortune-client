import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final participatingViewModelProvider =
    StateNotifierProvider<ParticipatingViewModel, ParticipatingState>(
  (ref) {
    return ParticipatingViewModel(
      const ParticipatingState(
        host: AsyncLoading(),
        guest: AsyncLoading(),
      ),
    )..initialize();
  },
);

class ParticipatingViewModel extends StateNotifier<ParticipatingState> {
  ParticipatingViewModel(super.state);

  Future<void> initialize() async {
    await getHostRooms();
    await getGuestRooms();
  }

  Future<void> getHostRooms() async {
    state = state.copyWith(
      host: await AsyncValue.guard(() async {
        return await Repository.rooms.fetchRoomsHost();
      }),
    );
  }

  Future<void> getGuestRooms() async {
    state = state.copyWith(
      guest: await AsyncValue.guard(() async {
        return await Repository.rooms.fetchRoomsGuest();
      }),
    );
  }
}
