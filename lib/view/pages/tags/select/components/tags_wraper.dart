import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/tags/select/select_tags_state.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/tag_widget.dart';

class TagsWraper extends StatelessWidget {
  const TagsWraper({
    super.key,
    required this.theme,
    required this.tags,
    required this.onSelect,
  });

  final AppTheme theme;
  final List<TagState> tags;
  final Function(TagState) onSelect;

  @override
  Widget build(BuildContext context) {
    /// BackGraundColor
    final onBackGraundColor = theme.appColors.primary;
    final offBackGraundColor = theme.appColors.onDisable;

    /// BorderColor
    final onBorderColor = theme.appColors.primary;
    final offBorderColor = theme.appColors.disable;

    /// TextColor
    final onTextColor = theme.appColors.onPrimary;
    final offTextColor = theme.appColors.disable;

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: tags.map((tag) {
        return TagWidget(
          value: tag.data.name,
          backGraundColor:
              tag.isSelected ? onBackGraundColor : offBackGraundColor,
          borderColor: tag.isSelected ? onBorderColor : offBorderColor,
          textColor: tag.isSelected ? onTextColor : offTextColor,
          onTap: () => onSelect(tag),
        );
      }).toList(),
    );
  }
}
