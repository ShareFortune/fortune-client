import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileInputAppBar extends HookConsumerWidget {
  const ProfileInputAppBar(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      height: 150,
      width: double.infinity,
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        title,
        style: theme.textTheme.h70.paint(theme.appColors.subText1).bold(),
      ),
    );
  }
}
