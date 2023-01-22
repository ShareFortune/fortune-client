import 'package:fortune_client/data/repository/tags/tags_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/tags/create/tag_creation_state.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final tagCreationViewModelProvider =
    StateNotifierProvider<TagCreationViewModel, TagCreationState>(
  (_) => TagCreationViewModel(sl()),
);

class TagCreationViewModel extends StateNotifier<TagCreationState> {
  TagCreationViewModel(this._tagsRepository) : super(const TagCreationState());

  final TagsRepository _tagsRepository;

  bool isPossibleToCreate() {
    return state.name != null &&
        state.name!.isNotEmpty &&
        state.description != null &&
        state.description!.isNotEmpty;
  }

  changeName(String value) {
    state = state.copyWith(name: value);
  }

  changeDescription(String? value) {
    state = state.copyWith(description: value);
  }

  Future<bool> create() async {
    if (isPossibleToCreate()) {
      if (await _tagsRepository.create(state.name!, state.description!)) {
        sl<AppRouter>().pop();
      }
    }
    return false;
  }

  navigateToEntryDescription() async {
    final result = await sl<AppRouter>().push(
      EntryDescriptionRoute(value: state.description),
    ) as String?;
    changeDescription(result ?? state.description);
  }
}
