import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/repository/join_requests/join_requests_repository.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final roomListViewModelProvider =
    StateNotifierProvider<RoomListViewModel, RoomListState>((ref) {
  return RoomListViewModel(sl(), sl())..initialize();
});

class RoomListViewModel extends StateNotifier<RoomListState> {
  RoomListViewModel(this._roomRepository, this._joinRequestsRepository)
      : super(const RoomListState());

  final RoomsRepository _roomRepository;
  final JoinRequestsRepository _joinRequestsRepository;

  Future<void> initialize() async => await fetchList();

  Future<void> fetchList() async {
    state = state.copyWith(
      rooms: await AsyncValue.guard(() async {
        final result = await _roomRepository.search();
        return result.map((e) {
          return RoomListStateItem.from(e);
        }).toList();
      }),
    );
  }

  changeMemberNum(int value) {
    state = state.copyWith(memberNum: value);
  }

  Future<bool> sendJoinRequest(String roomId) async {
    if (!await _joinRequestsRepository.request(roomId)) return false;
    final data = state.rooms.value!;
    state = state.copyWith(
      rooms: await AsyncValue.guard(() async {
        final index = data.indexWhere((room) => room.id == roomId);
        data[index] = data[index].copyWith(isRequested: true);
        return data;
      }),
    );
    return true;
  }

  navigateToEntryAddress() async {
    final result = await sl<AppRouter>().push(EntryAddressRoute()) as Address?;
    state = state.copyWith(address: result ?? state.address);
  }

  navigateToRoomDetail() async {
    await sl<AppRouter>().push(RoomDetailRoute(id: "id"));
  }

  navigateToTagsSelection() async {
    await sl<AppRouter>().push(TagsSelectionRoute());
  }
}
