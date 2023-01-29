import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/request/join_requests_confirmation/components/join_request_tile.dart';
import 'package:fortune_client/view/pages/request/join_requests_confirmation/join_requests_confirmation_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:gap/gap.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 参加申請一覧確認ページ
/// [id] 参加申請を受信したルームID
class JoinRequestsConfirmationPage extends HookConsumerWidget {
  const JoinRequestsConfirmationPage({
    super.key,
    @pathParam this.id = "タイトル",
    @queryParam this.roomTitle = "ルームタイトル",
  });

  final String id;
  final String roomTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(joinRequestsConfirmationViewModelProvider(id));
    final viewModel =
        ref.watch(joinRequestsConfirmationViewModelProvider(id).notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: const BackAppBar(title: "参加リクエスト"),
      body: ListView(
        children: [
          const Gap(30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              text: TextSpan(
                style: theme.textTheme.h30.paint(theme.appColors.subText2),
                children: [
                  TextSpan(
                      text: "「$roomTitle」",
                      style: theme.textTheme.h30
                          .paint(theme.appColors.subText1)
                          .bold()),
                  const TextSpan(text: "に参加したい人  "),
                  state.joinRequests.maybeWhen(
                    data: (data) => TextSpan(text: "${data.length}名"),
                    orElse: () => const TextSpan(),
                  )
                ],
              ),
            ),
          ),
          const Gap(20),
          state.joinRequests.when(data: (data) {
            return Column(
              children: data.map((joinRequest) {
                return JoinRequestTile(
                  theme: theme,
                  name: joinRequest.name,
                  info: "22歳・女性",
                  image: joinRequest.userImageUrl,
                  onTap: () {},
                );
              }).toList(),
            );
          }, error: (Object error, StackTrace stackTrace) {
            return errorWidget(error, stackTrace);
          }, loading: () {
            return loadingWidget();
          }),
        ],
      ),
    );
  }
}
