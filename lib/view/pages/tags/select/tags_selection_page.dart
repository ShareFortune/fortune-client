import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/tags/select/components/tag_text_field.dart';
import 'package:fortune_client/view/pages/tags/select/components/tags_wraper.dart';
import 'package:fortune_client/view/pages/tags/select/tags_selection_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:fortune_client/view/widgets/tag_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TagsSelectionPage extends HookConsumerWidget {
  const TagsSelectionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(tagsSelectionViewModelProvider);
    final viewModel = ref.watch(tagsSelectionViewModelProvider.notifier);

    final _tagCtrl = TextEditingController();

    /// 検索結果
    final searchResult = state.searchResult.when(
      data: (data) => TagsWraper(tags: data),
      error: (error, stackTrace) => errorWidget(error, stackTrace),
      loading: () => loadingWidget(),
    );

    return Scaffold(
      appBar: const BackAppBar(title: "タグを選択"),
      body: Column(
        children: [
          const Gap(30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TagTextField(emailCtrl: _tagCtrl, hintText: "タグを検索"),
          ),
          const Gap(30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("設定中のタグ"),
                const Gap(20),
                tagWraper(),
                const Gap(30),
                const Text("人気のタグ"),
                const Gap(20),
                searchResult,
              ],
            ),
          ),
        ],
      ),
    );
  }

  tagWraper() {
    List<String> tags = [
      "進撃の巨人",
      "メイドインアビス",
      "ワンピース",
      "ナルト",
      "コードギアス",
      "クラナド",
      "デスノート",
    ];

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(tags.length, (index) {
        Color backGraundColor;
        Color borderColor;
        Color textColor;

        if (index % 3 == 0) {
          backGraundColor = Colors.red;
          borderColor = Colors.red;
          textColor = Colors.white;
        } else {
          backGraundColor = Colors.white;
          borderColor = Colors.grey;
          textColor = Colors.grey;
        }

        return TagWidget(
          value: tags[index],
          backGraundColor: backGraundColor,
          borderColor: borderColor,
          textColor: textColor,
        );
      }).toList(),
    );
  }
}
