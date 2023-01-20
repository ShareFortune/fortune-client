import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/tags/select/tags_selection_state.dart';
import 'package:fortune_client/view/pages/tags/select/tags_selection_view_model.dart';
import 'package:fortune_client/view/widgets/other/tag_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TagsWraper extends HookConsumerWidget {
  const TagsWraper(this.tags, {super.key});

  final List<TagState> tags;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(tagsSelectionViewModelProvider.notifier);

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
          value: tag.tagName,
          backGraundColor:
              tag.isSelected ? onBackGraundColor : offBackGraundColor,
          borderColor: tag.isSelected ? onBorderColor : offBorderColor,
          textColor: tag.isSelected ? onTextColor : offTextColor,
          onTap: () => viewModel.selectTag(tag),
        );
      }).toList(),
    );
  }
}
