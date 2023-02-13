import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/repository/tags/tags_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/tags/select/select_tags_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final selectTagsViewModelProvider = StateNotifierProvider.autoDispose
    .family<SelectTagsViewModel, SelectTagsState, List<Tag>>(
  (ref, beingSet) => SelectTagsViewModel(getIt())..initialize(beingSet),
);

class SelectTagsViewModel extends StateNotifier<SelectTagsState> {
  SelectTagsViewModel(this._repository) : super(const SelectTagsState());

  final TagsRepository _repository;

  initialize(List<Tag> beingSet) {
    state = state.copyWith(
      beingSet: beingSet.map((e) {
        return TagState(data: e, isSelected: true);
      }).toList(),
    );

    getRecommendedTags();
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

  Future<void> getRecommendedTags() async {
    final tags = await AsyncValue.guard<List<TagState>>(() async {
      final result = await _repository.recommend();
      return result.map((e) => TagState.from(e)).toList();
    });
    state = state.copyWith(recommendation: tags);
  }

  saveSetData() {
    getIt<AppRouter>().pop(state.beingSet.isEmpty
        ? null
        : state.beingSet.map((e) => e.data).toList());
  }

  navigateToTagCreation() async {
    final tag = await getIt<AppRouter>().push(CreateTagRoute()) as Tag?;
    if (tag != null) {
      state = state.copyWith(
        beingSet: [...state.beingSet, TagState(data: tag, isSelected: true)],
      );
    }
  }
}
