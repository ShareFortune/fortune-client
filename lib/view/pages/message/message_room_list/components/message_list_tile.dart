import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MessageListTile extends HookConsumerWidget {
  const MessageListTile({
    super.key,
    required this.title,
    required this.postedDate,
    required this.body,
  });

  /// ルームタイトル
  final String title;

  /// ボディ
  final String body;

  /// 最終投稿日時
  final String postedDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    /// タイトル
    final titleTextColor = theme.appColors.subText1;
    final titleTextStyle = theme.textTheme.h40.paint(titleTextColor).bold();
    final titleText = Text(title, style: titleTextStyle);

    /// ボディ
    final bodyTextColor = theme.appColors.subText3;
    final bodyTextStyle = theme.textTheme.h30.paint(bodyTextColor);
    final bodyText = Text(body, style: bodyTextStyle);

    /// 投稿日時
    final postedDateTextColor = theme.appColors.subText3;
    final postedDateTextStyle = theme.textTheme.h10.paint(postedDateTextColor);
    final postedDateText = Text(postedDate, style: postedDateTextStyle);

    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const CircleAvatar(radius: 30),
          const Gap(15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [titleText, postedDateText],
                ),
                const Gap(5),
                bodyText,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
