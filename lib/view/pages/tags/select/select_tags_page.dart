import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/tags/select/components/tag_text_field.dart';
import 'package:fortune_client/view/pages/tags/select/components/tags_wraper.dart';
import 'package:fortune_client/view/pages/tags/select/select_tags_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isDisplaySearchResultsProvider = StateProvider((_) => false);

class SelectTagsPage extends HookConsumerWidget {
  SelectTagsPage(this.beingSet, {super.key});

  final List<Tag> beingSet;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(selectTagsViewModelProvider(beingSet));
    final viewModel = ref.watch(selectTagsViewModelProvider(beingSet).notifier);

    /// 表示データ
    final isDisplaySearchResults = ref.watch(isDisplaySearchResultsProvider);

    /// 設定されたタグ
    final tagsBeingSet = state.beingSet.isNotEmpty
        ? TagsWraper(tags: state.beingSet, onSelect: viewModel.selectTag)
        : Container();

    /// おすすめのタグ
    final recommendedResults = state.recommendation.when(
      data: (data) => data.isEmpty
          ? Container()
          : TagsWraper(tags: data, onSelect: viewModel.selectTag),
      error: (error, stackTrace) => errorWidget(error, stackTrace),
      loading: () => loadingWidget(),
    );

    /// 検索結果
    final searchResult = state.searchResult.when(
      data: (data) => data.isEmpty
          ? emptyTagContainer(theme, viewModel.navigateToTagCreation)
          : TagsWraper(tags: data, onSelect: viewModel.selectTag),
      error: (error, stackTrace) => errorWidget(error, stackTrace),
      loading: () => loadingWidget(),
    );

    /// タグ検索フォームクリア
    tagFormClearCallBack() {
      ref.watch(isDisplaySearchResultsProvider.notifier).state = false;
      controller.clear();
    }

    /// タグ検索フォーム入力
    tagFormOnEditingComplete() {
      ref.watch(isDisplaySearchResultsProvider.notifier).state = true;
      viewModel.search(controller.text);
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: theme.appColors.onBackground,
        appBar: BackAppBar(
          title: LocaleKeys.select_tags_page_title.tr(),
          action: [
            TextButton(
              onPressed: () => viewModel.saveSetData(),
              child: Text(
                LocaleKeys.select_tags_page_saveBtn.tr(),
                style: theme.textTheme.h40.bold(),
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TagTextField(
                controller: controller,
                hintText: LocaleKeys.select_tags_page_search_hint.tr(),
                clearCallBack: tagFormClearCallBack,
                onEditingComplete: tagFormOnEditingComplete,
              ),
            ),
            const Gap(30),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.select_tags_page_beingSet_title.tr(),
                        style: theme.textTheme.h30.paint(
                          theme.appColors.subText1,
                        ),
                      ),
                      const Gap(20),
                      tagsBeingSet,
                      const Gap(50),
                    ],
                  ),
                  isDisplaySearchResults
                      ? tagsContainer(
                          theme,
                          LocaleKeys.select_tags_page_search_title.tr(),
                          searchResult,
                        )
                      : tagsContainer(
                          theme,
                          LocaleKeys.select_tags_page_popular_title.tr(),
                          recommendedResults,
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  tagsContainer(AppTheme theme, String title, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const Gap(20),
        child,
      ],
    );
  }

  Widget emptyTagContainer(AppTheme theme, VoidCallback onCreate) {
    return Center(
      child: Column(
        children: [
          const Gap(50),
          Text(
            LocaleKeys.select_tags_page_search_empty.tr(),
            style: theme.textTheme.h30.paint(theme.appColors.subText3),
          ),
          TextButton(
            onPressed: onCreate,
            child: Text(
              LocaleKeys.select_tags_page_createBtn.tr(),
              style: theme.textTheme.h30.paint(theme.appColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
