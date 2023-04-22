import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/tags/search/search_tags_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/form_field/base_text_field.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:fortune_client/view/widgets/other/tag_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchTagsPageAuguments {
  final List<Tag> tags;
  final Function(List<Tag>)? onChanged;

  SearchTagsPageAuguments({
    required this.tags,
    this.onChanged,
  });
}

class SearchTagsPage extends HookConsumerWidget {
  const SearchTagsPage(this.arguments, {super.key});

  final SearchTagsPageAuguments arguments;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(searchTagsViewModelProvider(arguments));
    final viewModel =
        ref.watch(searchTagsViewModelProvider(arguments).notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BackAppBar(
        title: 'タグ',
        action: [
          TextButton(
            onPressed: () {},
            child: Text(
              LocaleKeys.select_tags_page_save.tr(),
              style: theme.textTheme.h40.bold(),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),

              /// 検索バー
              _SearchBar(
                focusNode: state.focusNode,
                controller: state.textEditingController,
                onSearch: viewModel.search,
                onClear: viewModel.clearSearchResults,
              ),
              const Gap(50),

              /// おすすめのタグ or 検索結果
              state.shouldShowSearchResults
                  ? _TagsWraper(title: '検索結果', tags: state.searchResults)
                  : _TagsWraper(title: 'おすすめのタグ', tags: state.recommendation),
            ],
          ),

          /// 設定されたタグ
          Positioned(
            bottom: state.focusNode.hasFocus ? 20 : 80,
            child: _TagsWraper(
              title: '設定中のタグ',
              isSelected: true,
              tags: AsyncData(state.selected),
            ),
          ),
        ],
      ),
    );
  }
}

/// 検索バー
class _SearchBar extends HookConsumerWidget {
  const _SearchBar({
    required this.focusNode,
    required this.controller,
    required this.onSearch,
    required this.onClear,
  });

  final FocusNode focusNode;
  final TextEditingController controller;
  final Function(String) onSearch;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BaseTextField(
        focusNode: focusNode,
        controller: controller,
        hintText: LocaleKeys.select_tags_page_search_hint.tr(),
        onClear: () {
          controller.clear();
          onClear();
        },
        onEditingComplete: () {
          focusNode.unfocus();
          onSearch(controller.text);
        },
      ),
    );
  }
}

class _TagsWraper extends HookConsumerWidget {
  const _TagsWraper({
    required this.tags,
    this.isSelected = false,
    required this.title,
  });

  final String title;
  final bool isSelected;
  final AsyncValue<List<Tag>> tags;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return AsyncValueWidget(
      data: tags,
      builder: (tags) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.h30.bold().paint(
                      theme.appColors.subText1,
                    ),
              ),
              const Gap(15),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: tags.map((tag) {
                  return TagWidget(
                    value: tag.name,
                    backGraundColor: isSelected
                        ? theme.appColors.primary //
                        : theme.appColors.onBackground,
                    borderColor: isSelected
                        ? theme.appColors.primary //
                        : theme.appColors.border1,
                    textColor: isSelected
                        ? theme.appColors.onPrimary //
                        : theme.appColors.subText2,
                    onTap: () {},
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
