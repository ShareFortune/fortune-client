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
    this.padding,
    this.middleMargin = 10,
    this.hasData = true,
    this.border = const BorderSide(width: 0.5),
    this.onTapped,
  });

  final String title;
  final Widget child;
  final Widget? leading;
  final EdgeInsetsGeometry? padding;

  /// [title]と[child]間の余白
  final double middleMargin;

  /// 表示データの有無
  final bool hasData;
  final BorderSide border;

  final VoidCallback? onTapped;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    if (!hasData) return const SizedBox.shrink();

    return InkWell(
      onTap: onTapped,
      child: Container(
        padding: padding ??
            EdgeInsets.only(
              left: 20,
              top: 30,
              right: onTapped != null ? 10 : 20,
              bottom: 30,
            ),
        decoration: BoxDecoration(
          color: theme.appColors.onBackground,
          border: Border(
            bottom: border.copyWith(color: theme.appColors.border1),
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
            if (onTapped != null) const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
