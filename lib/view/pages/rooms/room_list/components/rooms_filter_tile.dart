import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/form_field/base_transition_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomsFilterTile extends HookConsumerWidget {
  const RoomsFilterTile({
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
      value: value,
      onTap: onTap,
      titleColor: theme.appColors.subText2,
      padding: const EdgeInsets.only(left: 5, top: 15, bottom: 15),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(width: 1, color: theme.appColors.border2)),
      ),
    );
  }
}
