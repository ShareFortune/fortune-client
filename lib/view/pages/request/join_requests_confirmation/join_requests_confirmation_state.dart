import 'package:fortune_client/data/model/base/room_join_request/room_join_request.dart';
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
