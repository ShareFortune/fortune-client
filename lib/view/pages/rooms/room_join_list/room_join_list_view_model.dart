import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/domain/domain_providers.dart';
import 'package:fortune_client/domain/usecases/room/fetch_list.dart';
import 'package:fortune_client/view/pages/rooms/room_join_list/room_join_list_state.dart';

final roomJoinListViewModelProvider =
    StateNotifierProvider<RoomListViewModel, AsyncValue<RoomJoinListState>>(
        (ref) => RoomListViewModel(ref: ref)..initialize());

class RoomListViewModel extends StateNotifier<AsyncValue<RoomJoinListState>> {
  RoomListViewModel({required Ref ref})
      : _ref = ref,
        super(const AsyncLoading());

  final Ref _ref;
  late final roomFetchListUseCase = _ref.watch(roomFetchAllUseCaseProvider);

  Future<void> initialize() async => await fetchList();

  Future<void> fetchList() async {
    state = await AsyncValue.guard(() async {
      final result = await roomFetchListUseCase.handle(RoomFetchListParams());

      final hostRooms =
          result.rooms.map((e) => RoomHostListItemState.fromEntity(e)).toList();
      final gestRooms = result.rooms
          .map((e) => RoomGuestListItemState.fromEntity(e))
          .toList();
      return RoomJoinListState(
        hostRooms: hostRooms,
        guestRooms: gestRooms,
      );
    });
  }

  onTapRoom() {}
}
