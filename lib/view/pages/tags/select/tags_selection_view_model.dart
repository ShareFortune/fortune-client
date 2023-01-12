import 'package:fortune_client/data/repository/tags/tags_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/tags/select/tags_selection_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final tagsSelectionViewModelProvider =
    StateNotifierProvider<TagsSelectionViewModel, TagsSelectionState>(
  (ref) => TagsSelectionViewModel(sl())..initialize(),
);

class TagsSelectionViewModel extends StateNotifier<TagsSelectionState> {
  TagsSelectionViewModel(this._repository)
      : super(const TagsSelectionState(
          recommendation: AsyncValue.loading(),
          isSet: [],
          searchResult: AsyncValue.loading(),
        ));

  final TagsRepository _repository;

  initialize() async {
    await getRecommendedTags();
  }

  getRecommendedTags() async {
    final tags = await AsyncValue.guard<List<TagState>>(() async {
      final result = await _repository.recommend();
      return result.map((e) => TagState.from(e)).toList();
    });
    state = state.copyWith(recommendation: tags);
  }
}
