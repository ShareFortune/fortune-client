import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/tag/tag_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// タグのラッパー
class TagsWraper extends HookConsumerWidget {
  final List<Tag> tags;

  const TagsWraper(this.tags, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: tags.map((tag) {
        return TagWidget(
          value: tag.name,
          backGraundColor: theme.appColors.background,
          borderColor: theme.appColors.border2,
          textColor: theme.appColors.subText2,
        );
      }).toList(),
    );
  }
}
