import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/domain/usecases/room/fetch_list.dart';
import 'package:fortune_client/injector.dart';

import 'package:fortune_client/view/pages/rooms/room_join_list/room_join_list_state.dart';

final roomJoinListViewModelProvider =
    StateNotifierProvider<RoomListViewModel, AsyncValue<RoomJoinListState>>(
  (ref) {
    return RoomListViewModel(
      ref.watch(roomFetchAllUseCaseProvider),
    )..initialize();
  },
);

class RoomListViewModel extends StateNotifier<AsyncValue<RoomJoinListState>> {
  RoomListViewModel(
    this._useCase,
  ) : super(const AsyncLoading());

  final RoomFetchListUseCase _useCase;

  Future<void> initialize() async => await fetchList();

  Future<void> fetchList() async {
    state = await AsyncValue.guard(() async {
      final result = await _useCase.handle(RoomFetchListParams());

      final hostRooms =
          result.rooms.map((e) => RoomHostListItemState.fromEntity(e)).toList();
      final gestRooms = result.rooms
          .map((e) => RoomGuestListItemState.fromEntity(e))
          .toList();
      return RoomJoinListState(
        hostRooms: hostRooms,
        guestRooms: gestRooms,
      );
    });
  }

  onTapRoom() {}
}
