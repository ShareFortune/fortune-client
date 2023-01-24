import 'package:fortune_client/view/pages/request/join_requests_confirmation/join_requests_confirmation_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final joinRequestsConfirmationViewModelProvider = StateNotifierProvider<
    JoinRequestsConfirmationViewModel, JoinRequestsConfirmationState>(
  (_) => JoinRequestsConfirmationViewModel(),
);

class JoinRequestsConfirmationViewModel
    extends StateNotifier<JoinRequestsConfirmationState> {
  JoinRequestsConfirmationViewModel()
      : super(const JoinRequestsConfirmationState(joinRequests: []));
}
