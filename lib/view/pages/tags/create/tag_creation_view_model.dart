import 'package:fortune_client/view/pages/tags/create/tag_creation_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final tagCreationViewModelProvider =
    StateNotifierProvider<TagCreationViewModel, TagCreationState>(
  (_) => TagCreationViewModel(),
);

class TagCreationViewModel extends StateNotifier<TagCreationState> {
  TagCreationViewModel() : super(const TagCreationState());

  changeName(String value) {
    state = state.copyWith(name: value);
  }

  changeDescription(String value) {
    state = state.copyWith(description: value);
  }

  create() {}
}
