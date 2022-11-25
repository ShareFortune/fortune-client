import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';

final roomListViewModelProvider =
    StateNotifierProvider<RoomListViewModel, AsyncValue<RoomListState>>((ref) {
  return RoomListViewModel(ref)..initialize();
});

class RoomListViewModel extends StateNotifier<AsyncValue<RoomListState>> {
  RoomListViewModel(this._ref) : super(const AsyncLoading());

  final Ref _ref;
  late final roomRepository = _ref.watch(Repository.roomProvider);

  Future<void> initialize() async => await fetchList();

  Future<void> fetchList() async {
    state = await AsyncValue.guard(() async {
      final result = await roomRepository.fetchList();
      final rooms = result.map((e) {
        return RoomListItemState.fromEntity(e);
      }).toList();
      return RoomListState(rooms: rooms);
    });
  }
}
