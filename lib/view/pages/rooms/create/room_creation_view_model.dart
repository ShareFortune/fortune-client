import 'package:fortune_client/view/pages/rooms/create/room_creation_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final roomCreationViewModelProvider =
    StateNotifierProvider<RoomCreationViewModel, RoomCreationState>(
  (_) => RoomCreationViewModel(),
);

class RoomCreationViewModel extends StateNotifier<RoomCreationState> {
  RoomCreationViewModel() : super(const RoomCreationState());

  Future<void> create() async {}
}
