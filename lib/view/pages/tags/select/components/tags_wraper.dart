import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/tags/select/select_tags_state.dart';
import 'package:fortune_client/view/widgets/other/tag_widget.dart';

class TagsWraper extends StatelessWidget {
  const TagsWraper({super.key, required this.tags, required this.onSelect});

  final List<TagState> tags;
  final Function(TagState) onSelect;

  @override
  Widget build(BuildContext context) {
    /// BackGraundColor
    const onBackGraundColor = Colors.red;
    const offBackGraundColor = Colors.white;

    /// BorderColor
    const onBorderColor = Colors.red;
    const offBorderColor = Colors.grey;

    /// TextColor
    const onTextColor = Colors.white;
    const offTextColor = Colors.grey;

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
