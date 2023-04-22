import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/tags/search/search_tags_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/animation/animated_visibility.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/button/save_button.dart';
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

  /// アニメーションの時間
  static const _animationDuration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(searchTagsViewModelProvider(arguments));
    final viewModel =
        ref.watch(searchTagsViewModelProvider(arguments).notifier);

    return Material(
      color: theme.appColors.onBackground,
      child: Stack(
        children: [
          /// デフォルトで表示する画面
          /// AppBarとおすすめのタグ
          /// 検索バーがフォーカスされたら非表示にする
          AnimatedVisibility(
            visible: !state.shouldShowSearchResults,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackAppBar(title: 'タグ', action: [SaveButton()]),
                Container(
                  padding: const EdgeInsets.only(top: 100),
                  child: _Item(
                    title: 'おすすめのタグ',
                    asyncValue: state.recommendation,
                    builder: (tags) => _TagsWraper(tags: tags),
                  ),
                ),
              ],
            ),
          ),

          /// 検索バー
          _SearchBar(
            focusNode: state.focusNode,
            controller: state.textEditingController,
            onSearch: viewModel.search,
            onClear: viewModel.clearSearchResults,
            shouldAnimate: state.shouldShowSearchResults,
          ),

          /// 設定されたタグ
          /// キーボードの表示に合わせて位置を変更する
          AnimatedPositioned(
            duration: _animationDuration,
            bottom: state.focusNode.hasFocus
                // キーボードの高さ + 余白(20)
                ? MediaQuery.of(context).viewInsets.bottom + 20
                : 80,
            child: _Item(
              title: '設定中のタグ',
              asyncValue: AsyncData(state.selected),
              builder: (tags) => _TagsWraper(tags: tags, isSelected: true),
            ),
          ),

          /// 検索結果
          /// 検索バーがフォーカスされたら表示にする
          Positioned(
            top: kToolbarHeight + 100,
            child: AnimatedVisibility(
              visible: state.shouldShowSearchResults,
              child: _Item(
                title: '検索結果',
                asyncValue: state.searchResults,
                builder: (tags) => _TagsWraper(tags: tags),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Item<T> extends HookConsumerWidget {
  const _Item({
    required this.title,
    required this.asyncValue,
    required this.builder,
  });

  final String title;
  final AsyncValue<T> asyncValue;
  final Widget? Function(T) builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return AsyncValueWidget(
      data: asyncValue,
      builder: (value) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.textTheme.h30.paint(theme.appColors.subText1).bold(),
            ),
            const Gap(15),
            Container(child: builder(value)),
          ],
        ),
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
    required this.shouldAnimate,
  });

  final FocusNode focusNode;
  final TextEditingController controller;
  final Function(String) onSearch;
  final VoidCallback onClear;

  /// アニメーションを実行するかどうか
  final bool shouldAnimate;

  /// 右側のアイコンのサイズ
  Size get trailingIconSize => const Size(30, 30);

  /// デフォルトの余白
  double get defaultPadding => 20;

  /// フォーカス時の右側の余白
  /// デフォルトの余白 + アイコンの余白 + アイコンのサイズ
  double get focusRightPadding => defaultPadding + 10 + trailingIconSize.width;

  /// アニメーション開始前の高さ
  double get startPosition => 65;

  /// アニメーション終了後の高さ
  double get endPosition => 135;

  /// 現在位置の高さ
  double get position => shouldAnimate ? startPosition : endPosition;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedContainer(
      width: MediaQuery.of(context).size.width,
      duration: SearchTagsPage._animationDuration,
      transform: Matrix4.translationValues(0, position, 0),
      constraints: const BoxConstraints(maxHeight: 50),
      child: Stack(
        children: [
          AnimatedContainer(
            alignment: Alignment.centerLeft,
            duration: SearchTagsPage._animationDuration,
            padding: EdgeInsets.only(
              left: defaultPadding,
              right: shouldAnimate ? focusRightPadding : defaultPadding,
            ),
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
          ),
          AnimatedContainer(
            alignment: Alignment.centerRight,
            duration: SearchTagsPage._animationDuration,
            padding: const EdgeInsets.only(right: 10),
            child: AnimatedOpacity(
              opacity: shouldAnimate ? 1 : 0,
              duration: SearchTagsPage._animationDuration,
              child: IconButton(
                iconSize: trailingIconSize.width,
                onPressed: onClear,
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// タグのラッパー
class _TagsWraper extends HookConsumerWidget {
  const _TagsWraper({
    required this.tags,
    this.isSelected = false,
  });

  final bool isSelected;
  final List<Tag> tags;

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
          onTap: () {
            print("タップされたタグ: ${tag.name}");
          },
        );
      }).toList(),
    );
  }
}
