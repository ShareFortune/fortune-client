import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/rooms/create/room_create_state.dart';

final roomCreateViewModelProvider =
    StateNotifierProvider<RoomCreateViewModel, RoomCreateState>((ref) {
  return RoomCreateViewModel(ref);
});

class RoomCreateViewModel extends StateNotifier<RoomCreateState> {
  RoomCreateViewModel(this._ref) : super(const RoomCreateState());

  final Ref _ref;

  Future<void> create() async {}
}
