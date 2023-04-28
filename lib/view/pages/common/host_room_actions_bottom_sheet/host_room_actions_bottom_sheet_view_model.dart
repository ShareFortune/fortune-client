import 'package:fortune_client/data/model/rooms/rooms_host_response/rooms_host_response.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final hostRoomActionsBottomSheetViewModelProvider =
    StateNotifierProvider<HostRoomActionsBottomSheetViewModel, void>(
  (ref) => HostRoomActionsBottomSheetViewModel(),
);

class HostRoomActionsBottomSheetViewModel extends StateNotifier<void> {
  HostRoomActionsBottomSheetViewModel() : super(null);

  copy() {}
  navigateToEditRoom(RoomsHostResponseRoom room) async {
    // await getIt<AppRouter>().push(EditRoomRoute(roomId: room.id));
  }

  delete() {}
}
