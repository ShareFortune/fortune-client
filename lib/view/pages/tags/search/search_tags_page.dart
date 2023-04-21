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

class SearchTagsPage extends ConsumerWidget {
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
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: BaseTextField(
                  controller: TextEditingController(),
                  hintText: LocaleKeys.select_tags_page_search_hint.tr(),
                  // onClear: clearCallBack,
                  // onEditingComplete: onEditingComplete,
                ),
              ),
              const Gap(50),

              /// おすすめのタグ or 検索結果
              _Item(
                title: 'おすすめのタグ',
                child: AsyncValueWidget(
                  data: state.recommendation,
                  builder: (tags) => TagsWraper(tags: tags),
                ),
              ),
            ],
          ),

          /// 設定されたタグ
          Positioned(
            bottom: 80,
            child: _Item(
              title: '設定中のタグ',
              child: TagsWraper(tags: state.selected),
            ),
          ),
        ],
      ),
    );
  }
}

class _Item extends ConsumerWidget {
  const _Item({
    required this.title,
    required this.child,
  });

  final String title;
  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.h30.paint(theme.appColors.subText1).bold(),
          ),
          const Gap(15),
          Container(child: child),
        ],
      ),
    );
  }
}

class TagsWraper extends ConsumerWidget {
  const TagsWraper({
    super.key,
    required this.tags,
    this.isSelected = false,
  });

  final List<Tag> tags;
  final bool isSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Wrap(
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
    );
  }
}
