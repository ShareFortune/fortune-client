import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/form_field/base_expanded_tile.dart';
import 'package:fortune_client/view/widgets/picker/base_cupertino_picker.dart';

class ExpandedTilePicker extends StatelessWidget {
  const ExpandedTilePicker({
    super.key,
    required this.theme,
    required this.title,
    required this.items,
    required this.onSelect,
    required this.value,
  });

  final AppTheme theme;
  final String title;
  final String? value;
  final List<String> items;
  final Function(String) onSelect;

  @override
  Widget build(BuildContext context) {
    final titleTextColor = theme.appColors.subText2;
    final titleTextStyle = theme.textTheme.h40.paint(titleTextColor);

    return BaseExpandedTile(
      title: title,
      titleStyle: titleTextStyle,
      value: value,
      textWhenUnsetStyle: theme.textTheme.h30.paint(theme.appColors.subText3),
      content: BaseCupertinoPicker(
        items: items,
        onSelectedItemChanged: (index) {
          onSelect(items[index]);
        },
      ),
    );
  }
}
