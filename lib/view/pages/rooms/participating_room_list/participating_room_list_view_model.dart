import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_state.dart';

final participatingRoomListViewModelProvider = StateNotifierProvider<
        ParticipatingRoomListViewModel, AsyncValue<ParticipatingRoomListState>>(
    (ref) => ParticipatingRoomListViewModel(ref)..initialize());

class ParticipatingRoomListViewModel
    extends StateNotifier<AsyncValue<ParticipatingRoomListState>> {
  ParticipatingRoomListViewModel(this._ref) : super(const AsyncLoading());

  final Ref _ref;
  late final roomRepository = _ref.watch(Repository.roomProvider);

  // Future<void> initialize() async => ParticipatingRoomListState(
  //       hostRooms: [HostRoomListItemState()],
  //       guestRooms: [GuestRoomListItemState()],
  //     );

  Future<void> initialize() async => await fetchList();

  Future<void> fetchList() async {
    state = await AsyncValue.guard(() async {
      final result = await roomRepository.fetchListHost();

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

  onTapRoom() {}
}