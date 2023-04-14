import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/injector.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final hostRoomActionsBottomSheetViewModelProvider =
    StateNotifierProvider<HostRoomActionsBottomSheetViewModel, void>(
  (ref) => HostRoomActionsBottomSheetViewModel(),
);

class HostRoomActionsBottomSheetViewModel extends StateNotifier<void> {
  HostRoomActionsBottomSheetViewModel() : super(null);

  copy() {}
  navigateToEditRoom(GetV1RoomsHostResponseRoom room) async {
    // await getIt<AppRouter>().push(EditRoomRoute(roomId: room.id));
  }

  delete() {}
}
