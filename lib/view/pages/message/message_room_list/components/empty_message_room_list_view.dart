import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmptyMessageRoomListView extends HookConsumerWidget {
  const EmptyMessageRoomListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    /// アイコン
    const iconSize = 80.0;
    final iconColor = theme.appColors.disable;
    final iconWidget = Icon(Icons.email, size: iconSize, color: iconColor);

    /// 注釈テキスト
    final textStyleColor = theme.appColors.subText3;
    final textStyle = theme.textTheme.h20.paint(textStyleColor);
    final textWidget = Text("参加中のメッセージルームが存在しません。", style: textStyle);

    return Container(
      color: theme.appColors.background2,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [iconWidget, const Gap(30), textWidget],
        ),
      ),
    );
  }
}
