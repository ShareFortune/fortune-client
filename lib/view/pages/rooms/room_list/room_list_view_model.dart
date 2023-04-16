import 'package:fortune_client/data/model/core/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/routes/route_path.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final roomListViewModelProvider =
    StateNotifierProvider<RoomListViewModel, RoomListState>((ref) {
  return RoomListViewModel(
    const RoomListState(),
  )..initialize();
});

class RoomListViewModel extends StateNotifier<RoomListState> {
  RoomListViewModel(super.state);

  Future<void> initialize() async => await fetchList();

  Future<void> fetchList() async {
    bool hasRoomSearchResult = false;
    state = state.copyWith(
      rooms: await AsyncValue.guard(() async {
        final result = await Repository.rooms.fetchList(
          memberNum: state.filter.memberNum,
          tags: state.filter.tags,
          addressWithId: state.filter.addressWithId,
        );

        /// 検索結果が存在しない場合
        /// [hasRoomSearchResult]を書き換える
        /// ルームリストは保存せず前データを返す。
        if (result.isEmpty) {
          return state.rooms.value ?? List.empty();
        }
        hasRoomSearchResult = true;
        return result.map((data) => RoomListStateRoom(data: data)).toList();
      }),
      hasRoomSearchResult: hasRoomSearchResult,
    );
  }

  /// 参加申請
  Future<bool> sendJoinRequest(String roomId) async {
    if (!await Repository.joinRequests.request(roomId)) return false;
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
        ? await Repository.favorites.register(roomId)
        : await Repository.favorites.unregister(roomId);

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

  /// フィルター更新
  changeFilter(RoomListStateFilter? filter) async {
    if (filter != null) {
      state = state.copyWith(filter: filter);
      await fetchList();
    }
  }

  /// 場所検索ページへ遷移
  Future<AddressWithId?> navigateToEntryAddress() async {
    // return await getIt<AppRouter>().push(
    //   EntryAddressRoute(),
    // ) as AddressWithId?;
  }

  /// タグ検索ページへ遷移
  Future<List<Tag>?> navigateToTagsSelection() async {
    // return await getIt<AppRouter>().push(
    //   SelectTagsRoute(beingSet: state.filter.tags ?? List.empty()),
    // ) as List<Tag>?;
  }

  /// ルーム詳細ページへ遷移
  navigateToRoomDetail(String id) async {
    await navigator.navigateTo(RoutePath.roomDetail);
  }
}
