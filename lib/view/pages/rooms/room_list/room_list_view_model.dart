import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/repository/favorites/favorites_repository.dart';
import 'package:fortune_client/data/repository/join_requests/join_requests_repository.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final roomListViewModelProvider =
    StateNotifierProvider<RoomListViewModel, RoomListState>((ref) {
  return RoomListViewModel(sl(), sl(), sl())..initialize();
});

class RoomListViewModel extends StateNotifier<RoomListState> {
  RoomListViewModel(this._roomRepository, this._joinRequestsRepository,
      this._favoritesRepository)
      : super(const RoomListState());

  final RoomsRepository _roomRepository;
  final JoinRequestsRepository _joinRequestsRepository;
  final FavoritesRepository _favoritesRepository;

  Future<void> initialize() async => await fetchList();

  changeMemberNum(int value) {
    state = state.copyWith(memberNum: value);
  }

  Future<void> fetchList() async {
    state = state.copyWith(
      rooms: await AsyncValue.guard(() async {
        final result = await _roomRepository.fetchList();
        return result.map((data) => RoomListStateItem(data: data)).toList();
      }),
    );
  }

  Future<bool> sendJoinRequest(String roomId) async {
    if (!await _joinRequestsRepository.request(roomId)) return false;
    final data = state.rooms.value!;
    state = state.copyWith(
      rooms: await AsyncValue.guard(() async {
        final index = data.indexWhere((room) => room.data.id == roomId);
        data[index] = data[index].copyWith(isRequested: true);
        return data;
      }),
    );
    return true;
  }

  /// ルームの保存・保存解除
  /// 返り値は保存・保存解除処理を完了したかどうか
  Future<bool> saveOrReleaseRoom(String roomId, bool isFavorite) async {
    final result = isFavorite
        ? await _favoritesRepository.register(roomId) // 登録
        : await _favoritesRepository.unregister(roomId); // 解除

    if (!result) return false;

    state = state.copyWith(
      rooms: await AsyncValue.guard(() async {
        final data = state.rooms.value!;
        final index = data.indexWhere((room) => room.data.id == roomId);
        data[index] = data[index].copyWith(
          data: data[index].data.copyWith(isFavorite: isFavorite),
        );
        return data;
      }),
    );
    return true;
  }

  navigateToEntryAddress() async {
    final result = await sl<AppRouter>().push(
      EntryAddressRoute(),
    ) as AddressWithId?;
    state = state.copyWith(addressWithId: result ?? state.addressWithId);
  }

  navigateToRoomDetail(String id) async {
    await sl<AppRouter>().push(RoomDetailRoute(roomId: id));
  }

  navigateToTagsSelection() async {
    final result = await sl<AppRouter>().push(
      TagsSelectionRoute(beingSet: state.tags ?? List.empty()),
    ) as List<Tag>?;
    state = state.copyWith(tags: result ?? state.tags);
  }
}
