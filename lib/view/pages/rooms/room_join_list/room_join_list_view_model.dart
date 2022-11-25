import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/injector.dart';

import 'package:fortune_client/view/pages/rooms/room_join_list/room_join_list_state.dart';

final roomJoinListViewModelProvider =
    StateNotifierProvider<RoomListViewModel, AsyncValue<RoomJoinListState>>(
        (ref) => RoomListViewModel(ref)..initialize());

class RoomListViewModel extends StateNotifier<AsyncValue<RoomJoinListState>> {
  RoomListViewModel(this._ref) : super(const AsyncLoading());

  final Ref _ref;
  late final roomRepository = _ref.watch(Repository.roomProvider);

  Future<void> initialize() async => false;

  // Future<void> initialize() async => await fetchList();

  // Future<void> fetchList() async {
  //   state = await AsyncValue.guard(() async {
  //     final result = await roomRepository.fetchList();

  //     final hostRooms = result.map((e) {
  //       return RoomHostListItemState.fromEntity(e);
  //     }).toList();
  //     final gestRooms = result.map((e) {
  //       return RoomGuestListItemState.fromEntity(e);
  //     }).toList();

  //     return RoomJoinListState(
  //       hostRooms: hostRooms,
  //       guestRooms: gestRooms,
  //     );
  //   });
  // }

  onTapRoom() {}
}
