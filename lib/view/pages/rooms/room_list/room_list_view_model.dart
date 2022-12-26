import 'package:auto_route/auto_route.dart';
import 'package:fortune_client/data/repository/room/room_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/util/logger.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final roomListViewModelProvider =
    StateNotifierProvider<RoomListViewModel, AsyncValue<RoomListState>>((ref) {
  return RoomListViewModel(sl())..initialize();
});

class RoomListViewModel extends StateNotifier<AsyncValue<RoomListState>> {
  RoomListViewModel(this.roomRepository) : super(const AsyncLoading());

  final RoomRepository roomRepository;

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

  pushRoomDetail(StackRouter router) async {
    await router.push(RoomDetailRoute(id: "id"));
  }
}
