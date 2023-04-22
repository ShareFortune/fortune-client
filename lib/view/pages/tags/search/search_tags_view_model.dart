import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/tags/search/search_tags_page.dart';
import 'package:fortune_client/view/pages/tags/search/search_tags_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchTagsViewModelProvider = StateNotifierProvider.family<
    SearchTagsViewModel, SearchTagsState, SearchTagsPageAuguments>(
  (ref, auguments) {
    return SearchTagsViewModel(
      SearchTagsState(
        didSearch: false,
        focusNode: FocusNode(),
        textEditingController: TextEditingController(),
        shouldShowSearchResults: false,
        selected: auguments.tags,
        recommendation: const AsyncLoading(),
        searchResults: AsyncData(List.empty()),
      ),
    )..initialize();
  },
);

class SearchTagsViewModel extends StateNotifier<SearchTagsState> {
  SearchTagsViewModel(super.state);

  void initialize() async {
    fetchRecommendation();

    /// フォーカスが当たったら検索結果を表示する
    state.focusNode.addListener(() => mightShowSearchResults());
  }

  /// 検索結果を表示すべきかどうかを判定する
  void mightShowSearchResults() {
    bool shouldShow = false;

    /// 検索していない時は検索結果を表示しない
    if (state.didSearch) shouldShow = true;

    /// フォーカスが当たっている時は検索結果を表示する
    if (state.focusNode.hasFocus) shouldShow = true;

    state = state.copyWith(shouldShowSearchResults: shouldShow);
  }

  /// タグを検索する
  Future<void> search(String query) async {
    if (query.isEmpty) return;
    state = state.copyWith(
      didSearch: true,
      searchResults: await AsyncValue.guard<List<Tag>>(() async {
        return await Repository.tags.search(query);
      }),
    );
    mightShowSearchResults();
  }

  /// おすすめのタグを取得する
  Future<void> fetchRecommendation() async {
    state = state.copyWith(
      recommendation: await AsyncValue.guard<List<Tag>>(() async {
        return await Repository.tags.recommend();
      }),
    );
  }

  /// 検索結果をクリアする
  void clearSearchResults() {
    state = state.copyWith(
      didSearch: false,
      shouldShowSearchResults: false,
      searchResults: AsyncData(List.empty()),
    );
    mightShowSearchResults();
  }
}
