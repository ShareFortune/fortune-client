import 'package:fortune_client/data/model/participant/host/participant_room_as_host.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final guestRoomActionsBottomSheetViewModelProvider =
    StateNotifierProvider<GuestRoomActionsBottomSheetViewModel, void>(
  (ref) => GuestRoomActionsBottomSheetViewModel(),
);

class GuestRoomActionsBottomSheetViewModel extends StateNotifier<void> {
  GuestRoomActionsBottomSheetViewModel() : super(null);

  copy() {}

  // navigateToEditRoom(ParticipantRoomAsHost room) async {
  //   await sl<AppRouter>().push(EditRoomRoute(room: room));
  // }

  delete() {}
}
