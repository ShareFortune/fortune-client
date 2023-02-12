import 'package:flutter/material.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BackAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? action;
  final Widget? leading;

  const BackAppBar({
    super.key,
    required this.title,
    this.leading,
    this.action,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return AppBar(
      elevation: 0,
      backgroundColor: theme.appColors.onBackground,
      title: Text(
        title,
        style: theme.textTheme.h40.paint(theme.appColors.subText1).bold(),
      ),
      iconTheme: IconThemeData(color: theme.appColors.iconBtn1),
      leading: leading,
      //  ?? BackButton(onPressed: sl<AppRouter>().pop),
      actions: action,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
