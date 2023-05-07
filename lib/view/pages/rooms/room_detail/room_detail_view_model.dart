import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_state.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'room_detail_view_model.g.dart';

@riverpod
class RoomDetailViewModel extends _$RoomDetailViewModel {
  @override
  Future<RoomDetailState> build(String roomId) async {
    return RoomDetailState(
      detail: await Repository.rooms.fetchDetail(roomId),
    );
  }

  Future<bool> joinRoomRequest(String roomId) {
    return Repository.joinRequests.request(roomId);
  }

  navigateToProfile(String id) async {
    await navigator.navigateTo(RoutePath.profile);
  }
}
