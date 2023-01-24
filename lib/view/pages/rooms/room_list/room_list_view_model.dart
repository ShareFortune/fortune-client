import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
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
        final result = await _roomRepository.search();
        return result.map((e) {
          return RoomListStateItem.from(e);
        }).toList();
      }),
    );
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

  /// ルームの保存・保存解除
  /// 返り値は保存・保存解除処理を完了したかどうか
  Future<bool> saveOrReleaseRoom(String roomId, bool isFavorite) async {
    Future<RoomListState> onChange(
        List<RoomListStateItem> datas, bool target) async {
      return state.copyWith(
        rooms: await AsyncValue.guard(() async {
          final index = datas.indexWhere((room) => room.id == roomId);
          datas[index] = datas[index].copyWith(isFavorite: target);
          return datas;
        }),
      );
    }

    final result = isFavorite
        ? await _favoritesRepository.register(roomId) // 登録
        : await _favoritesRepository.unregister(roomId); // 解除

    final data = state.rooms.value!;
    if (!result) {
      state = await onChange(data, isFavorite);
      return false;
    }
    state = await onChange(data, !isFavorite);
    return true;
  }

  navigateToEntryAddress() async {
    final result = await sl<AppRouter>().push(EntryAddressRoute()) as Address?;
    state = state.copyWith(address: result ?? state.address);
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
