import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_state.dart';

final roomDetailViewModelProvider =
    StateNotifierProvider<RoomDetailViewModel, AsyncValue<RoomDetailState>>(
        (ref) {
  return RoomDetailViewModel(ref: ref);
});

class RoomDetailViewModel extends StateNotifier<AsyncValue<RoomDetailState>> {
  RoomDetailViewModel({required Ref ref})
      : _ref = ref,
        super(const AsyncLoading());

  final Ref _ref;

  Future<void> joinRequest() async {}
}
