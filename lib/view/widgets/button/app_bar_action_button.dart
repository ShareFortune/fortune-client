import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBarActionButton extends ConsumerWidget {
  final String title;
  final VoidCallback? callback;
  final bool clickable;

  const AppBarActionButton({
    super.key,
    required this.title,
    required this.callback,
    this.clickable = true,
  });

  factory AppBarActionButton.create({
    bool clickable = true,
    VoidCallback? callback,
  }) {
    return AppBarActionButton(
      title: LocaleKeys.actions_create.tr(),
      callback: callback,
      clickable: clickable,
    );
  }

  factory AppBarActionButton.save({
    bool clickable = true,
    VoidCallback? callback,
  }) {
    return AppBarActionButton(
      title: LocaleKeys.actions_save.tr(),
      callback: callback,
      clickable: clickable,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final textStyle = theme.textTheme.h40.bold();

    return TextButton(
      onPressed: clickable
          ? () {
              callback?.call();
              navigator.goBack();
            }
          : null,
      child: Text(
        title,
        style: clickable
            ? textStyle.paint(theme.appColors.primary)
            : textStyle.paint(theme.appColors.subText3),
      ),
    );
  }
}
