import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
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
    @pathParam this.id = "_",
    @queryParam this.roomTitle = "_",
  });

  final String id;
  final String roomTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(joinRequestsConfirmationViewModelProvider(id));
    final viewModel =
        ref.watch(joinRequestsConfirmationViewModelProvider(id).notifier);

    /// リクエスト数
    int? requestCount;

    /// 参加リクエスト
    late Widget joinRequests;

    state.joinRequests.maybeWhen(
      data: (data) {
        requestCount = data.length;
        joinRequests = Column(
          children: data.map((joinRequest) {
            return JoinRequestTile(
              theme: theme,
              name: joinRequest.name,
              info: "22歳・女性",
              image: joinRequest.userImageURL,
              onTap: () {},
            );
          }).toList(),
        );
      },
      orElse: () {
        requestCount = null;
        joinRequests = loadingWidget();
      },
      error: (error, stackTrace) {
        joinRequests = errorWidget(error, stackTrace);
      },
    );

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BackAppBar(
        title: LocaleKeys.join_requests_confirmation_page_title.tr(),
      ),
      body: ListView(
        children: [
          const Gap(30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: requestCountText(theme, requestCount),
          ),
          const Gap(20),
          joinRequests,
        ],
      ),
    );
  }

  requestCountText(AppTheme theme, int? requestCount) {
    Widget requestCountText;
    if (requestCount != null && requestCount > 0) {
      requestCountText = Text(
        LocaleKeys.join_requests_confirmation_page_requestCount.tr(
          namedArgs: {
            "room": roomTitle,
            "requestCount": requestCount.toString(),
          },
        ),
        style: theme.textTheme.h30.bold(),
      );
    } else if (requestCount != null && requestCount < 1) {
      requestCountText = Text(
        LocaleKeys.join_requests_confirmation_page_requestCount.tr(),
      );
    } else {
      requestCountText = Container();
    }
    return requestCountText;
  }
}
