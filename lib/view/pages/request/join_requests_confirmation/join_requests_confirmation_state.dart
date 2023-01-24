import 'package:fortune_client/data/model/join_requests/join_requests.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_requests_confirmation_state.freezed.dart';

@freezed
class JoinRequestsConfirmationState with _$JoinRequestsConfirmationState {
  const factory JoinRequestsConfirmationState({
    required List<JoinRequest> joinRequests,
  }) = _JoinRequestsConfirmationState;
}
