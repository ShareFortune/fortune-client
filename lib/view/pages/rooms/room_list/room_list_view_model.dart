import 'package:fortune_client/data/repository/join_requests/join_requests_repository.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final roomListViewModelProvider =
    StateNotifierProvider<RoomListViewModel, AsyncValue<RoomListState>>((ref) {
  return RoomListViewModel(sl(), sl())..initialize();
});

class RoomListViewModel extends StateNotifier<AsyncValue<RoomListState>> {
  RoomListViewModel(this._roomRepository, this._joinRequestsRepository)
      : super(const AsyncLoading());

  final RoomsRepository _roomRepository;
  final JoinRequestsRepository _joinRequestsRepository;

  Future<void> initialize() async => await fetchList();

  Future<void> fetchList() async {
    state = await AsyncValue.guard(() async {
      final result = await _roomRepository.search();
      final rooms = result.map((e) {
        return RoomListItemState.from(e);
      }).toList();
      return RoomListState(rooms: rooms);
    });
  }

  Future<bool> sendJoinRequest(String roomId) async {
    return await _joinRequestsRepository.send(roomId);
  }

  navigateToRoomDetail() async {
    await sl<AppRouter>().push(RoomDetailRoute(id: "id"));
  }

  navigateToTagsSelection() async {
    await sl<AppRouter>().push(const TagsSelectionRoute());
  }
}
