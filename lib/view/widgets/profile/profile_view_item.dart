import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileItemContainer extends HookConsumerWidget {
  const ProfileItemContainer({
    super.key,
    required this.title,
    required this.child,
    this.leading,
    this.middleMargin = 10,
    this.hasData = true,
    this.border = const BorderSide(width: 0.5),
    this.isEditable = false,
    this.onTapped,
    this.isArrow = true,
  });

  final String title;
  final Widget child;
  final Widget? leading;

  /// [title]と[child]間の余白
  final double middleMargin;

  /// 表示データの有無
  final bool hasData;
  final BorderSide border;

  /// 編集可能かどうか
  final bool isEditable;
  final VoidCallback? onTapped;

  /// 矢印を表示するかどうか
  final bool isArrow;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    if (!hasData) return const SizedBox.shrink();

    return InkWell(
      onTap: isEditable ? onTapped : null,
      child: Container(
        padding: EdgeInsets.only(
          left: 20,
          top: 30,
          right: isEditable ? 10 : 20,
          bottom: 30,
        ),
        decoration: BoxDecoration(
          color: theme.appColors.onBackground,
          border: Border(
            bottom: border.copyWith(
              color: theme.appColors.border1,
            ),
          ),
        ),
        child: Row(
          children: [
            Container(child: leading),
            Gap(leading == null ? 0 : 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(title, style: theme.textTheme.h30.bold()),
                  Gap(middleMargin),
                  Container(child: child),
                ],
              ),
            ),
            if (isEditable && isArrow) const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
