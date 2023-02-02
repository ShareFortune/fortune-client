import 'package:fortune_client/data/model/base/room/room.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final hostRoomActionsBottomSheetViewModelProvider =
    StateNotifierProvider<HostRoomActionsBottomSheetViewModel, void>(
  (ref) => HostRoomActionsBottomSheetViewModel(),
);

class HostRoomActionsBottomSheetViewModel extends StateNotifier<void> {
  HostRoomActionsBottomSheetViewModel() : super(null);

  copy() {}
  navigateToEditRoom(GetV1RoomsHostResponseRoom room) async {
    await sl<AppRouter>().push(EditRoomRoute(room: room));
  }

  delete() {}
}
