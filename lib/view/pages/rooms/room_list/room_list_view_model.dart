import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/domain/domain_providers.dart';
import 'package:fortune_client/domain/usecases/room/fetch_list.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';

final roomListViewModelProvider =
    StateNotifierProvider<RoomListViewModel, AsyncValue<RoomListState>>((ref) {
  return RoomListViewModel(ref: ref)..initialize();
});

class RoomListViewModel extends StateNotifier<AsyncValue<RoomListState>> {
  RoomListViewModel({required Ref ref})
      : _ref = ref,
        super(const AsyncLoading());

  final Ref _ref;
  late final roomFetchListUseCase = _ref.watch(roomFetchAllUseCaseProvider);

  Future<void> initialize() async => await fetchList();

  Future<void> fetchList() async {
    state = await AsyncValue.guard(() async {
      final result = await roomFetchListUseCase.handle(RoomFetchListParams());
      final rooms =
          result.rooms.map((e) => RoomListItem.fromEntity(e)).toList();
      return RoomListState(rooms: rooms);
    });
  }
}
