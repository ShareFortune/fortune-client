import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:fortune_client/data/repository/tags/tags_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/tags/select/tags_selection_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final tagsSelectionViewModelProvider = StateNotifierProvider.autoDispose<
    TagsSelectionViewModel, TagsSelectionState>(
  (ref) => TagsSelectionViewModel(sl())..initialize(),
);

class TagsSelectionViewModel extends StateNotifier<TagsSelectionState> {
  TagsSelectionViewModel(this._repository) : super(const TagsSelectionState());

  final TagsRepository _repository;

  initialize() async {
    await getRecommendedTags();
  }

  selectTag(TagState tag) {
    tag.isSelected ? clearTag(tag) : setTag(tag);
  }

  clearTag(TagState tag) {
    final data = state.beingSet.where((e) => e.data.id != tag.data.id).toList();
    state = state.copyWith(beingSet: data);
  }

  setTag(TagState tag) {
    if (state.beingSet.any((e) => e.data.id == tag.data.id)) return;
    state = state.copyWith(
      beingSet: [tag.copyWith(isSelected: true), ...state.beingSet],
    );
  }

  search(String keyword) async {
    final tags = await AsyncValue.guard<List<TagState>>(() async {
      final result = await _repository.search(keyword);
      return result.map((e) => TagState.from(e)).toList();
    });
    state = state.copyWith(searchResult: tags);
  }

  getRecommendedTags() async {
    final tags = await AsyncValue.guard<List<TagState>>(() async {
      final result = await _repository.recommend();
      return result.map((e) => TagState.from(e)).toList();
    });
    state = state.copyWith(recommendation: tags);
  }

  saveSetData() {
    sl<AppRouter>().pop(state.beingSet.isEmpty
        ? null
        : state.beingSet.map((e) => e.data).toList());
  }

  navigateToTagCreation() async {
    final tag = await sl<AppRouter>().push(TagCreationRoute()) as Tag?;
    if (tag != null) {
      state = state.copyWith(
        beingSet: [...state.beingSet, TagState(data: tag, isSelected: true)],
      );
    }
  }
}
