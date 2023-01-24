import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/request/join_requests_confirmation/components/join_request_tile.dart';
import 'package:fortune_client/view/pages/request/join_requests_confirmation/join_requests_confirmation_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 参加申請一覧確認ページ
/// [id] 参加申請を受信したルームID
class JoinRequestsConfirmationPage extends HookConsumerWidget {
  const JoinRequestsConfirmationPage({
    super.key,
    @PathParam() required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(joinRequestsConfirmationViewModelProvider(id));
    final viewModel =
        ref.watch(joinRequestsConfirmationViewModelProvider(id).notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: const BackAppBar(title: "リクエスト"),
      body: state.joinRequests.when(
        data: (data) {
          return joinRequestListView([
            for (var joinRequest in data) ...{
              JoinRequestTile(
                theme: theme,
                name: joinRequest.name,
                info: "22歳・女性",
                onTap: () {},
              )
            }
          ]);
        },
        error: (error, stackTrace) => errorWidget(error, stackTrace),
        loading: () => loadingWidget(),
      ),
    );
  }

  Widget joinRequestListView(List<Widget> joinRequestTiles) {
    return ListView(
      padding: const EdgeInsets.only(top: 20),
      children: joinRequestTiles,
    );
  }
}
