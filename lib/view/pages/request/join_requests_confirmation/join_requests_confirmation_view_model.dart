import 'dart:async';

import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/request/join_requests_confirmation/join_requests_confirmation_page.dart';
import 'package:fortune_client/view/pages/request/join_requests_confirmation/join_requests_confirmation_state.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_view_model.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'join_requests_confirmation_view_model.g.dart';

@riverpod
class JoinRequestsConfirmationViewModel
    extends _$JoinRequestsConfirmationViewModel {
  @override
  Future<JoinRequestsConfirmationState> build(
    JoinRequestsConfirmationPageAuguments auguments,
  ) async {
    final joinRequests =
        await Repository.joinRequests.getJoinRequests(auguments.roomId);

    /// リクエストがなければ戻る
    if (joinRequests.isEmpty) navigator.goBack();

    /// ５秒ごとにリクエストを送信する
    final timer = Timer(const Duration(seconds: 5), () => ref.invalidateSelf());
    ref.onDispose(timer.cancel);

    return JoinRequestsConfirmationState(
      joinRequests: joinRequests,
    );
  }

  Future<void> accept(String requestId) async {
    await Repository.joinRequests.accept(requestId);

    /// 再取得
    ref.invalidateSelf();
    ref.invalidate(participatingViewModelProvider);
  }
}
