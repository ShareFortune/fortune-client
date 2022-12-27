import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class BackAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppTheme theme;
  final String title;
  final List<Widget>? action;

  const BackAppBar({
    super.key,
    required this.theme,
    required this.title,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
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
