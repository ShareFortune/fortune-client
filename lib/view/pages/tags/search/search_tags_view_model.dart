import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
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
        selected: auguments.tags
            .map((e) => TagState(tag: e, isSelected: true))
            .toList(),
        recommendation: const AsyncLoading(),
        searchResults: AsyncData(List.empty()),
      ),
    )..initialize();
  },
);

class SearchTagsViewModel extends StateNotifier<SearchTagsState> {
  SearchTagsViewModel(super.state);

  void initialize() async {
    clearSearchResults();
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

  /// タグを選択する
  void selectTag(TagState tag) {
    tag.isSelected ? _removeTag(tag.toggle()) : _addTag(tag.toggle());
    state.didSearch ? syncSearchResults() : syncRecommendation();
  }

  /// タグの比較
  bool _isSameTag(Tag a, Tag b) => a.id == b.id;
  bool _isSameTagState(TagState a, TagState b) => a.tag.id == b.tag.id;

  /// タグを設定する
  void _setTags(List<TagState> tags) => state = state.copyWith(selected: tags);

  /// タグを追加する
  void _addTag(TagState tag) => _setTags([tag, ...state.selected]);

  /// タグを削除する
  void _removeTag(TagState tag) {
    _setTags(state.selected.where((e) => !_isSameTagState(e, tag)).toList());
  }

  /// タグが選択されているかどうか
  bool _isSelected(Tag tag) {
    return state.selected.any((e) => _isSameTag(e.tag, tag));
  }

  /// タグの選択状態を同期する
  List<TagState> _syncSelected(List<Tag> tags) {
    return tags
        .map((e) => TagState(tag: e, isSelected: _isSelected(e)))
        .toList();
  }

  /// タグの選択状態を同期する
  List<TagState> syncSelected(List<TagState> tags) {
    final selectedIds = state.selected.map((e) => e.tag.id).toList();
    return tags.map((e) {
      return selectedIds.contains(e.tag.id) ? e.select() : e.unselect();
    }).toList();
  }

  /// おすすめタグの選択状態を同期する
  void syncRecommendation() {
    if (state.recommendation.value?.isNotEmpty != true) return;
    state = state.copyWith(
      recommendation: AsyncData(syncSelected(
        state.recommendation.value?.toList() ?? [],
      )),
    );
  }

  /// 検索結果の選択状態を同期する
  void syncSearchResults() {
    if (state.searchResults.value?.isNotEmpty != true) return;
    state = state.copyWith(
      searchResults: AsyncData(syncSelected(
        state.searchResults.value?.toList() ?? [],
      )),
    );
  }

  /// タグを検索する
  Future<void> searchTags(String query) async {
    if (query.isEmpty) return;
    state = state.copyWith(
      didSearch: true,
      searchResults: await AsyncValue.guard<List<TagState>>(() async {
        final result = await Repository.tags.search(query);
        return _syncSelected(result);
      }),
    );
    syncSearchResults();
    mightShowSearchResults();
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

  /// おすすめのタグを取得する
  Future<void> fetchRecommendation() async {
    state = state.copyWith(
      recommendation: await AsyncValue.guard<List<TagState>>(() async {
        final result = await Repository.tags.recommend();
        return _syncSelected(result);
      }),
    );
    syncRecommendation();
    mightShowSearchResults();
  }
}
