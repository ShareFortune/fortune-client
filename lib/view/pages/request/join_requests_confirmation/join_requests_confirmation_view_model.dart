import 'package:fortune_client/data/repository/join_requests/join_requests_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/request/join_requests_confirmation/join_requests_confirmation_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final joinRequestsConfirmationViewModelProvider = StateNotifierProvider.family<
    JoinRequestsConfirmationViewModel,
    JoinRequestsConfirmationState,
    String>((_, roomId) {
  return JoinRequestsConfirmationViewModel(roomId, sl())..initialize();
});

class JoinRequestsConfirmationViewModel
    extends StateNotifier<JoinRequestsConfirmationState> {
  JoinRequestsConfirmationViewModel(
    this.roomId,
    this._joinRequestsRepository,
  ) : super(const JoinRequestsConfirmationState());

  final String roomId;
  final JoinRequestsRepository _joinRequestsRepository;

  Future<void> initialize() async {
    await fetchJoinRequests();
  }

  fetchJoinRequests() async {
    await AsyncValue.guard(() async {
      return await _joinRequestsRepository.getJoinRequests(roomId);
    }).then((value) {
      state = state.copyWith(joinRequests: value);
    });
  }

  acceptJoinRequest(String requestId) async {
    await _joinRequestsRepository.accept(requestId).whenComplete(() {
      fetchJoinRequests();
    });
  }
}
