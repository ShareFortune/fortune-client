import 'package:fortune_client/data/model/join_requests/join_requests_response/join_requests_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'join_requests_confirmation_state.freezed.dart';

@freezed
class JoinRequestsConfirmationState with _$JoinRequestsConfirmationState {
  const factory JoinRequestsConfirmationState({
    required String roomId,
    required AsyncValue<List<RoomJoinRequest>> joinRequests,
  }) = _JoinRequestsConfirmationState;
}
