import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BackAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? action;

  const BackAppBar({
    super.key,
    required this.title,
    this.action,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    final iconColor = theme.appColors.iconBtn1;

    final titleTextColor = theme.appColors.subText1;
    final titleTextStyle = theme.textTheme.h40.paint(titleTextColor).bold();

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: BackButton(color: iconColor),
      title: Text(title, style: titleTextStyle),
      iconTheme: IconThemeData(color: iconColor),
      actions: action,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
