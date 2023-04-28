import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SaveButton extends ConsumerWidget {
  const SaveButton(this.onSaved, {super.key});

  final VoidCallback? onSaved;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return TextButton(
      onPressed: () {
        onSaved?.call();
        navigator.goBack();
      },
      child: Text(
        LocaleKeys.select_tags_page_save.tr(),
        style: theme.textTheme.h40.bold(),
      ),
    );
  }
}
