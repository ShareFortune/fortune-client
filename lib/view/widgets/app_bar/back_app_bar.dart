import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BackAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? action;
  final Widget? leading;
  final bool? centerTitle;

  const BackAppBar({
    super.key,
    required this.title,
    this.leading,
    this.action,
    this.centerTitle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return AppBar(
      elevation: 0,
      backgroundColor: theme.appColors.onBackground,
      centerTitle: centerTitle,
      title: Text(
        title,
        style: theme.textTheme.h40.paint(theme.appColors.subText1).bold(),
      ),
      iconTheme: IconThemeData(color: theme.appColors.iconBtn1),
      leading: leading,
      actions: action,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
