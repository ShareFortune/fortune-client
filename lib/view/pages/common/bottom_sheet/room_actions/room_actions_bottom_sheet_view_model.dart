import 'package:hooks_riverpod/hooks_riverpod.dart';

final roomActionsBottomSheetViewModelProvider =
    StateNotifierProvider<RoomActionsBottomSheetViewModel, void>(
  (ref) => RoomActionsBottomSheetViewModel(),
);

class RoomActionsBottomSheetViewModel extends StateNotifier<void> {
  RoomActionsBottomSheetViewModel() : super(null);

  copy() {}
  edit() {}
  delete() {}
}
