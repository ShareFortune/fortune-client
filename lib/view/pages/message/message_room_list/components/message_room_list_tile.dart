import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MessageRoomListTile extends HookConsumerWidget {
  const MessageRoomListTile({
    super.key,
    required this.title,
    required this.postedDate,
    required this.body,
  });

  /// ルームタイトル
  final String title;

  /// ボディ
  final String? body;

  /// 最終投稿日時
  final String? postedDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const CircleAvatar(radius: 26),
          const Gap(15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.h40.paint(
                        theme.appColors.subText1,
                      ),
                    ),
                    Text(
                      postedDate ?? "",
                      style: theme.textTheme.h10.paint(
                        theme.appColors.subText3,
                      ),
                    ),
                  ],
                ),
                const Gap(5),
                Text(
                  body ?? "",
                  style: theme.textTheme.h30.paint(
                    theme.appColors.subText3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
