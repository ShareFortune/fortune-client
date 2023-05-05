import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/pages/tags/search/search_tags_page.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final roomListViewModelProvider =
    StateNotifierProvider<RoomListViewModel, RoomListState>((ref) {
  return RoomListViewModel(
    const RoomListState(),
  )..initialize();
});

class RoomListViewModel extends StateNotifier<RoomListState> {
  RoomListViewModel(super.state);

  /// フィルター
  RoomListStateFilter get filter => state.filter;

  Future<void> initialize() => fetchRooms();

  Future<void> fetchRooms() async {
    bool hasRoomSearchResult = false;
    state = state.copyWith(
      rooms: await AsyncValue.guard(() async {
        final result = await Repository.rooms.fetchRooms(
          memberNum: filter.memberNum,
          tags: filter.tags,
          address: filter.address,
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

  /// 次のページを取得
  Future<void> fetchNextRooms() async {
    if (state.rooms.value == null) return;
    final result = await Repository.rooms.fetchNextRooms();
    if (result.isEmpty) return;
    state = state.copyWith(
      rooms: await AsyncValue.guard(() async {
        final data = state.rooms.value!;
        data.addAll(result.map((data) => RoomListStateRoom(data: data)));
        return data;
      }),
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

  /// フィルタリング
  Future<void> _filtering(RoomListStateFilter? filter) async {
    if (filter == null) return;
    state = state.copyWith(filter: filter);
    await fetchRooms();
  }

  /// タグでフィルタリング
  Future<void> filteringByTags() async {
    await navigator.navigateTo(
      RoutePath.searchTag,
      arguments: SearchTagsPageAuguments(
        tags: filter.tags,
        onChanged: (tags) => _filtering(filter.copyWith(tags: tags)),
      ),
    );
  }

  /// 場所でフィルタリング
  Future<void> filteringByAddress(Address? address) async {
    await _filtering(filter.copyWith(address: address));
  }

  /// 参加人数でフィルタリング
  Future<void> filteringByMemberNum(int? memberNum) async {
    await _filtering(filter.copyWith(memberNum: memberNum));
  }

  /// フィルターのリセット
  void resetFilter() async {
    state = state.copyWith(filter: const RoomListStateFilter());
    await fetchRooms();
  }
}
