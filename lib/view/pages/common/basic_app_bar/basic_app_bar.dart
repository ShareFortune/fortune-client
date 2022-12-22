import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BasicAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const BasicAppBar({
    super.key,
    required this.title,
    this.hieght = 140,
  });

  final String title;
  final double hieght;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: hieght,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        titlePadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        title: Text(
          title,
          style: theme.textTheme.h60
              .merge(const TextStyle(color: Colors.black))
              .bold(),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(hieght);
}
