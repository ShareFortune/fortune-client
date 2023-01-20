import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EntryProfileTile extends HookConsumerWidget {
  const EntryProfileTile({
    super.key,
    required this.title,
    required this.value,
    required this.ontap,
  });

  final String title;
  final String? value;
  final Function() ontap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    /// タイトルテキスト
    final titleTextColor = theme.appColors.subText2;
    final titleTextStyle = theme.textTheme.h40.paint(titleTextColor);
    final titleText = Text(title, style: titleTextStyle);

    /// 入力データテキストスタイル
    final valueTextColor = theme.appColors.primary;
    final valueTextStyle = theme.textTheme.h40.paint(valueTextColor);

    /// 未入力データテキストスタイル
    final emptyTextColor = theme.appColors.subText3;
    final emptyTextStyle = theme.textTheme.h40.paint(emptyTextColor);

    /// 入力データテキスト
    final valueText = value != null
        ? Text(value!, style: valueTextStyle)
        : Text("未設定", style: emptyTextStyle);

    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            titleText,
            Row(
              children: [
                valueText,
                const Gap(5),
                Icon(
                  Icons.chevron_right,
                  color: theme.appColors.iconBtn2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
