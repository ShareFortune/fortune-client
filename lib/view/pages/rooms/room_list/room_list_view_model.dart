import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/pages/tags/search/search_tags_page.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final roomListViewModelProvider =
    StateNotifierProvider<RoomListViewModel, RoomListState>((ref) {
  return RoomListViewModel(const RoomListState())..initialize();
});

class RoomListViewModel extends StateNotifier<RoomListState> {
  RoomListViewModel(super.state);

  /// フィルター
  RoomListStateFilter get filter => state.filter;

  Future<void> initialize() => fetchRooms();

  Future<void> fetchRooms() async {
    state = state.copyWith(
      rooms: await AsyncValue.guard(() async {
        return await Repository.rooms.fetchRooms(
          memberNum: filter.memberNum,
          tags: filter.tags,
          address: filter.address,
        );
      }),
    );
  }

  /// 次のページを取得
  Future<void> fetchNextRooms() async {
    if (state.rooms.value == null) return;
    state = state.copyWith(isFetchingNextPage: true);
    state = state.copyWith(
      isFetchingNextPage: false,
      rooms: await AsyncValue.guard(() async {
        return [
          ...state.rooms.value!,
          ...await Repository.rooms.fetchRoomsNext(),
        ];
      }),
    );
  }

  /// 参加申請
  Future<bool> sendJoinRequest(String roomId) async {
    return await Repository.joinRequests.request(roomId);
  }

  /// ルームの保存・保存解除
  /// 返り値は保存・保存解除処理を完了したかどうか
  Future<bool> saveOrReleaseRoom(String roomId, bool isFavorite) async {
    return isFavorite
        ? await Repository.favorites.register(roomId)
        : await Repository.favorites.unregister(roomId);
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
