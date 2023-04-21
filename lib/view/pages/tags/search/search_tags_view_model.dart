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
        selected: auguments.tags,
        recommendation: const AsyncLoading(),
        searchResults: const AsyncLoading(),
      ),
    )..initialize();
  },
);

class SearchTagsViewModel extends StateNotifier<SearchTagsState> {
  SearchTagsViewModel(super.state);

  void initialize() {
    fetchRecommendation();
  }

  Future<void> searchTags(String query) async {}

  /// おすすめのタグを取得する
  Future<void> fetchRecommendation() async {
    final recommendation = await AsyncValue.guard<List<Tag>>(() async {
      return await Repository.tags.recommend();
    });
    state = state.copyWith(recommendation: recommendation);
  }
}
