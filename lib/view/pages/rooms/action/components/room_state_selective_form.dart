import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/form_field/base_expanded_tile.dart';
import 'package:fortune_client/view/widgets/picker/base_cupertino_picker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomStateSelectiveForm extends HookConsumerWidget {
  const RoomStateSelectiveForm({
    super.key,
    required this.title,
    required this.value,
    required this.items,
    this.separator = "",
    required this.onSelect,
  });

  final String title;
  final String? value;
  final List<String> items;
  final String separator;
  final Function(String) onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    final titleTextColor = theme.appColors.subText1;
    final titleTextStyle = theme.textTheme.h40.paint(titleTextColor).bold();

    return BaseExpandedTile(
      title: title,
      titleStyle: titleTextStyle,
      value: value,
      textWhenUnset: "必須",
      textWhenUnsetStyle: theme.textTheme.h30.paint(theme.appColors.subText3),
      content: BaseCupertinoPicker(
        items: items.map((e) => e + separator).toList(),
        onSelectedItemChanged: (index) {
          onSelect(items[index].replaceAll(separator, ""));
        },
      ),
    );
  }
}
