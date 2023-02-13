import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final roomDetailViewModelProvider =
    StateNotifierProvider.family<RoomDetailViewModel, RoomDetailState, String>(
  (ref, roomId) => RoomDetailViewModel(roomId)..initialize(),
);

class RoomDetailViewModel extends StateNotifier<RoomDetailState> {
  RoomDetailViewModel(String roomId) : super(RoomDetailState(roomId: roomId));

  Future<void> initialize() async {
    await fetch();
  }

  Future<void> fetch() async {
    state = state.copyWith(
      detail: await AsyncValue.guard(() async {
        return await Repository.rooms.fetchDetail(state.roomId);
      }),
    );
  }

  Future<bool> joinRequest() {
    return Repository.joinRequests.request(state.roomId);
  }

  navigateToProfile(String id) async {
    await getIt<AppRouter>().push(ProfileRoute(id: id));
  }
}
