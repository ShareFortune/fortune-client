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
    const color = Colors.black;

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: const BackButton(color: color),
      title: Text(
        title,
        style: theme.textTheme.h60.bold().merge(const TextStyle(color: color)),
      ),
      actions: action,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
