import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/request/join_requests_confirmation/join_requests_confirmation_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final joinRequestsConfirmationViewModelProvider = StateNotifierProvider.family<
    JoinRequestsConfirmationViewModel,
    JoinRequestsConfirmationState,
    String>((_, roomId) {
  return JoinRequestsConfirmationViewModel(JoinRequestsConfirmationState(
    roomId: roomId,
    joinRequests: const AsyncLoading(),
  ))
    ..initialize();
});

class JoinRequestsConfirmationViewModel
    extends StateNotifier<JoinRequestsConfirmationState> {
  JoinRequestsConfirmationViewModel(super.state);

  Future<void> initialize() async {
    await fetchJoinRequests();
  }

  fetchJoinRequests() async {
    await AsyncValue.guard(() async {
      return Repository.joinRequests.getJoinRequests(state.roomId);
    }).then((value) {
      state = state.copyWith(joinRequests: value);
    });
  }

  acceptJoinRequest(String requestId) async {
    await Repository.joinRequests.accept(requestId).whenComplete(() {
      fetchJoinRequests();
    });
  }
}
