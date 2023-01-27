import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/form_field/base_transition_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomCreationTransitionTile extends HookConsumerWidget {
  const RoomCreationTransitionTile({
    super.key,
    required this.title,
    this.value,
    required this.onTap,
  });

  final String title;
  final String? value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return BaseTransitionTile(
      title: title,
      titleStyle: theme.textTheme.h40.paint(theme.appColors.subText1).bold(),
      value: value,
      valueStyle: theme.textTheme.h30.paint(theme.appColors.primary),
      textWhenUnsetStyle: theme.textTheme.h30.paint(theme.appColors.subText3),
      onTap: onTap,
      titleColor: theme.appColors.subText2,
      padding: const EdgeInsets.only(left: 0, top: 12, bottom: 12),
      textWhenUnset: "必須",
    );
  }
}
