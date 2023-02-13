import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_type.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final participatingRoomListViewModelProvider = StateNotifierProvider.family<
    ParticipatingRoomListViewModel,
    ParticipatingRoomListState,
    ParticipatingType>(
  (ref, type) {
    return ParticipatingRoomListViewModel(
      const ParticipatingRoomListState(AsyncLoading()),
      type,
      getIt(),
    )..initialize();
  },
);

class ParticipatingRoomListViewModel
    extends StateNotifier<ParticipatingRoomListState> {
  ParticipatingRoomListViewModel(super.state, this._type, this._repository);

  final ParticipatingType _type;
  final Repository _repository;

  initialize() => getRooms();

  Future<void> getRooms() async {
    state = state.copyWith(
      rooms: await AsyncValue.guard(() async {
        switch (_type) {
          case ParticipatingType.host:
            return await _repository.rooms.getRoomsToParticipateAsHost();
          case ParticipatingType.guest:
            return await _repository.rooms.getRoomsToParticipateAsGuest();

          /// TODO
          case ParticipatingType.all:
            return await _repository.rooms.getRoomsToParticipateAsGuest();
        }
      }),
    );
  }
}
