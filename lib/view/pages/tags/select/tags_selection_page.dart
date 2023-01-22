import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/tags/select/components/tag_text_field.dart';
import 'package:fortune_client/view/pages/tags/select/components/tags_wraper.dart';
import 'package:fortune_client/view/pages/tags/select/tags_selection_state.dart';
import 'package:fortune_client/view/pages/tags/select/tags_selection_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isDisplaySearchResultsProvider = StateProvider((_) => false);

class TagsSelectionPage extends HookConsumerWidget {
  TagsSelectionPage({super.key});

  final tagCtrl = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(tagsSelectionViewModelProvider);
    final viewModel = ref.watch(tagsSelectionViewModelProvider.notifier);

    /// 表示データ
    final isDisplaySearchResults = ref.watch(isDisplaySearchResultsProvider);

    /// 設定されたタグ
    final tagsBeingSet = _tagsBeingSet(state.beingSet);

    /// おすすめのタグ
    final recommendedResults = state.recommendation.when(
      data: (data) => data.isEmpty ? Container() : TagsWraper(data),
      error: (error, stackTrace) => errorWidget(error, stackTrace),
      loading: () => loadingWidget(),
    );

    /// 検索結果
    final searchResult = state.searchResult.when(
      data: (data) {
        return data.isEmpty
            ? emptyTagContainer(theme, viewModel.navigateToTagCreation)
            : TagsWraper(data);
      },
      error: (error, stackTrace) => errorWidget(error, stackTrace),
      loading: () => loadingWidget(),
    );

    /// タグ検索フォームクリア
    tagFormClearCallBack() {
      ref.watch(isDisplaySearchResultsProvider.notifier).state = false;
      tagCtrl.clear();
    }

    /// タグ検索フォーム入力
    tagFormOnEditingComplete() {
      ref.watch(isDisplaySearchResultsProvider.notifier).state = true;
      viewModel.search(tagCtrl.text);
    }

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BackAppBar(
        title: "タグを選択",
        action: [
          TextButton(
            onPressed: () => viewModel.saveSetData(),
            child: Text("保存", style: theme.textTheme.h40.bold()),
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
              emailCtrl: tagCtrl,
              hintText: "タグを検索",
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
                tagsBeingSet,
                isDisplaySearchResults
                    ? tagsContainer(theme, "検索結果", searchResult)
                    : tagsContainer(theme, "人気のタグ", recommendedResults),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _tagsBeingSet(List<TagState> tags) {
    if (tags.isEmpty) return Container();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("設定中のタグ"),
        const Gap(20),
        TagsWraper(tags),
        const Gap(50),
      ],
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
    /// アドバイステキスト
    final adviceTextColor = theme.appColors.subText3;
    final adviceTextStyle = theme.textTheme.h30.paint(adviceTextColor);

    /// ナビゲーションテキスト
    final navigationTextColor = theme.appColors.primary;
    final navigationTextStyle = theme.textTheme.h30.paint(navigationTextColor);

    return Center(
      child: Column(
        children: [
          const Gap(50),
          Text("タグが存在しません。", style: adviceTextStyle),
          TextButton(
            onPressed: onCreate,
            child: Text("タグを作成しますか？", style: navigationTextStyle),
          ),
        ],
      ),
    );
  }
}
