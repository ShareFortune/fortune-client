import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/request/join_requests_confirmation/components/join_request_tile.dart';
import 'package:fortune_client/view/pages/request/join_requests_confirmation/join_requests_confirmation_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:gap/gap.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class JoinRequestsConfirmationPageAuguments {
  const JoinRequestsConfirmationPageAuguments({
    required this.roomId,
    required this.roomTitle,
    required this.requestCount,
  });

  final String roomId;
  final String roomTitle;
  final int requestCount;
}

/// 参加申請一覧確認ページ
/// [id] 参加申請を受信したルームID
class JoinRequestsConfirmationPage extends HookConsumerWidget {
  final JoinRequestsConfirmationPageAuguments augument;

  const JoinRequestsConfirmationPage(this.augument, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state =
        ref.watch(joinRequestsConfirmationViewModelProvider(augument));
    final viewModel =
        ref.watch(joinRequestsConfirmationViewModelProvider(augument).notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BackAppBar(
        title: LocaleKeys.join_requests_confirmation_page_title.tr(),
      ),
      body: AsyncValueWidget(
        data: state,
        builder: (state) {
          return ListView(
            children: [
              const Gap(30),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  LocaleKeys.join_requests_confirmation_page_requestCount.tr(
                    args: [
                      augument.roomTitle,
                      state.joinRequests.length.toString(),
                    ],
                  ),
                  style: theme.textTheme.h30.bold(),
                ),
              ),
              const Gap(20),
              Column(
                children: state.joinRequests.map((joinRequest) {
                  return JoinRequestTile(
                    theme: theme,
                    name: joinRequest.name,
                    image: joinRequest.userImageURL,
                    accept: () => viewModel.accept(joinRequest.id),
                  );
                }).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}
