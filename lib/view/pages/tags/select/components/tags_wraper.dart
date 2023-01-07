import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/tags/select/tags_selection_state.dart';
import 'package:fortune_client/view/widgets/tag_widget.dart';

class TagsWraper extends StatelessWidget {
  const TagsWraper({super.key, required this.tags});

  final List<TagState> tags;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: tags.map((tag) {
        return TagWidget(
          value: tag.tagName,
          backGraundColor: Colors.white,
          borderColor: Colors.grey,
          textColor: Colors.grey,
        );
      }).toList(),
    );
  }
}
