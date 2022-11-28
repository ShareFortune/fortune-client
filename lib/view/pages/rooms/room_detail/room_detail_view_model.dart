import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_state.dart';

final roomDetailViewModelProvider =
    StateNotifierProvider<RoomDetailViewModel, AsyncValue<RoomDetailState>>(
        (ref) {
  return RoomDetailViewModel(ref: ref)..initialize();
});

class RoomDetailViewModel extends StateNotifier<AsyncValue<RoomDetailState>> {
  RoomDetailViewModel({required Ref ref})
      : _ref = ref,
        super(const AsyncLoading());

  final Ref _ref;

  Future<void> initialize() async => await fetch();

  Future<void> fetch() async {
    state = await AsyncValue.guard(() async {
      return const RoomDetailState();
    });
  }

  Future<void> joinRequest() async {}
}
