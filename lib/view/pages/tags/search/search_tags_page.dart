import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/tags/search/search_tags_state.dart';
import 'package:fortune_client/view/pages/tags/search/search_tags_view_model.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/animation/animated_visibility.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/button/app_bar_action_button.dart';
import 'package:fortune_client/view/widgets/form_field/base_text_field.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:fortune_client/view/widgets/tag/tag_widget.dart';
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

    final textEditingController = useTextEditingController();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Material(
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
                  BackAppBar(title: 'タグ', action: [
                    AppBarActionButton.save(
                      callback: () => arguments.onChanged?.call(
                        state.selectedTags,
                      ),
                    )
                  ]),
                  Container(
                    padding: const EdgeInsets.only(top: 100),
                    child: _Item(
                      title: 'おすすめのタグ',
                      tags: state.recommendation,
                      onSelected: viewModel.selectTag,
                    ),
                  ),
                ],
              ),
            ),

            /// 検索バー
            _SearchBar(
              focusNode: state.focusNode,
              controller: textEditingController,
              onSearch: viewModel.searchTags,
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
                tags: AsyncData(state.selected),
                onSelected: viewModel.selectTag,
              ),
            ),

            /// 検索結果
            /// 検索バーがフォーカスされたら表示にする
            Positioned(
              top: kToolbarHeight + 100,
              child: AnimatedVisibility(
                visible: state.shouldShowSearchResults,
                child: !state.didSearch
                    ? const SizedBox.shrink()
                    : _Item(
                        title: '検索結果',
                        tags: state.searchResults,
                        onSelected: viewModel.selectTag,
                        buildEmpty: _SearchResultEmptyWidget(
                          textEditingController.text,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Item extends HookConsumerWidget {
  const _Item({
    required this.title,
    required this.tags,
    required this.onSelected,
    this.buildEmpty,
  });

  final String title;
  final AsyncValue<List<TagState>> tags;
  final Function(TagState)? onSelected;

  /// タグが存在しない場合に表示するウィジェット
  final Widget? buildEmpty;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return AsyncValueWidget(
      data: tags,
      builder: (tags) {
        if (tags.isEmpty && buildEmpty != null) return buildEmpty!;

        return Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    theme.textTheme.h30.paint(theme.appColors.subText1).bold(),
              ),
              const Gap(15),
              _TagsWraper(
                tags: tags,
                onSelected: onSelected,
              )
            ],
          ),
        );
      },
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
              hintText: LocaleKeys.search_tag_page_hint.tr(),
              onClear: () => controller.clear(),
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
                onPressed: () {
                  focusNode.unfocus();
                  controller.clear();
                  onClear();
                },
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
    required this.onSelected,
  });

  final List<TagState> tags;
  final Function(TagState)? onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    if (tags.isEmpty) {
      return Text(
        LocaleKeys.search_tag_page_beingSet_empty.tr(),
        style: theme.textTheme.h30.paint(theme.appColors.subText1),
      );
    }

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: tags.map((tagState) {
        return TagWidget(
          value: tagState.tag.name,
          backGraundColor: tagState.isSelected
              ? theme.appColors.primary //
              : theme.appColors.background,
          borderColor: tagState.isSelected
              ? theme.appColors.primary //
              : theme.appColors.border2,
          textColor: tagState.isSelected
              ? theme.appColors.onPrimary //
              : theme.appColors.subText2,
          onTap: () => onSelected?.call(tagState),
        );
      }).toList(),
    );
  }
}

class _SearchResultEmptyWidget extends HookConsumerWidget {
  const _SearchResultEmptyWidget(this.keyWord);

  final String keyWord;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            LocaleKeys.data_room_tags_data.tr(args: [keyWord]),
            style: theme.textTheme.h40.bold(),
          ),
          const Gap(30),
          Text(
            LocaleKeys.search_tag_page_search_empty.tr(),
            style: theme.textTheme.h30,
            textAlign: TextAlign.center,
          ),
          const Gap(50),
          MaterialButton(
            elevation: 0,
            color: theme.appColors.primary,
            textColor: theme.appColors.onPrimary,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              LocaleKeys.search_tag_page_create.tr(),
              style: theme.textTheme.h30.bold(),
            ),
            onPressed: () {
              navigator.navigateTo(RoutePath.tagInput);
            },
          ),
        ],
      ),
    );
  }
}
