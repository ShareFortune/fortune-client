import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BasicAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const BasicAppBar({
    super.key,
    required this.title,
    this.hieght = 160.0,
    this.action,
    this.centerTitle = false,
  });

  final String title;
  final double hieght;
  final List<Widget>? action;
  final bool centerTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      height: hieght,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Stack(
        children: [
          Align(
            alignment:
                centerTitle ? Alignment.bottomCenter : Alignment.bottomLeft,
            child: Text(
              title,
              style: theme.textTheme.h70
                  .merge(const TextStyle(color: Colors.black))
                  .bold(),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: action ?? List.empty(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(hieght);
}
