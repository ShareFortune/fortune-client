import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/form_field/base_expanded_tile.dart';
import 'package:fortune_client/view/widgets/picker/base_cupertino_picker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomsFilterExpandedTile extends HookConsumerWidget {
  const RoomsFilterExpandedTile({
    super.key,
    required this.title,
    required this.items,
    required this.onSelect,
    required this.value,
  });

  final String title;
  final String? value;
  final List<String> items;
  final Function(String) onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return BaseExpandedTile(
      title: title,
      titleStyle: theme.textTheme.h30.paint(theme.appColors.subText2),
      value: value,
      valueStyle: theme.textTheme.h30.paint(theme.appColors.primary),
      textWhenUnsetStyle: theme.textTheme.h30.paint(theme.appColors.subText3),
      titlePadding: const EdgeInsets.only(left: 5),
      content: BaseCupertinoPicker(
        items: items,
        onSelectedItemChanged: (index) {
          onSelect(items[index]);
        },
      ),
    );
  }
}
