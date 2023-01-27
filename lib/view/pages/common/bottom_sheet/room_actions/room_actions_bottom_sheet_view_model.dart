import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final roomActionsBottomSheetViewModelProvider =
    StateNotifierProvider<RoomActionsBottomSheetViewModel, void>(
  (ref) => RoomActionsBottomSheetViewModel(),
);

class RoomActionsBottomSheetViewModel extends StateNotifier<void> {
  RoomActionsBottomSheetViewModel() : super(null);

  copy() {}
  navigateToEditRoom() async {
    await sl<AppRouter>().push(EditRoomRoute());
  }

  delete() {}
}
