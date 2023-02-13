import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/request/join_requests_confirmation/join_requests_confirmation_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final joinRequestsConfirmationViewModelProvider = StateNotifierProvider.family<
    JoinRequestsConfirmationViewModel,
    JoinRequestsConfirmationState,
    String>((_, roomId) {
  return JoinRequestsConfirmationViewModel(roomId)..initialize();
});

class JoinRequestsConfirmationViewModel
    extends StateNotifier<JoinRequestsConfirmationState> {
  JoinRequestsConfirmationViewModel(this.roomId)
      : super(const JoinRequestsConfirmationState());

  final String roomId;

  Future<void> initialize() async {
    await fetchJoinRequests();
  }

  fetchJoinRequests() async {
    await AsyncValue.guard(() async {
      return Repository.joinRequests.getJoinRequests(roomId);
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
