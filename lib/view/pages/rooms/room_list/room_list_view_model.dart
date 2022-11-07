import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/domain/usecases/room/fetch_list.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';

final roomListViewModelProvider =
    StateNotifierProvider<RoomListViewModel, AsyncValue<RoomListState>>((ref) {
  return RoomListViewModel(ref.watch(roomFetchAllUseCaseProvider))
    ..initialize();
});

class RoomListViewModel extends StateNotifier<AsyncValue<RoomListState>> {
  RoomListViewModel(this._useCase) : super(const AsyncLoading());

  final RoomFetchListUseCase _useCase;

  Future<void> initialize() async => await fetchList();

  Future<void> fetchList() async {
    state = await AsyncValue.guard(() async {
      final result = await _useCase.handle(RoomFetchListParams());
      final rooms =
          result.rooms.map((e) => RoomListItem.fromEntity(e)).toList();
      return RoomListState(rooms: rooms);
    });
  }
}
