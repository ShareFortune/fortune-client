import 'package:hooks_riverpod/hooks_riverpod.dart';

final guestRoomActionsBottomSheetViewModelProvider =
    StateNotifierProvider<GuestRoomActionsBottomSheetViewModel, void>(
  (ref) => GuestRoomActionsBottomSheetViewModel(),
);

class GuestRoomActionsBottomSheetViewModel extends StateNotifier<void> {
  GuestRoomActionsBottomSheetViewModel() : super(null);

  copy() {}

  cancel() {}
}
