import 'package:fortune_client/view/pages/common/entry_page/entry_description/entry_description_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final entryDescriptionViewModelProvider =
    StateNotifierProvider<EntryDescriptionViewModel, EntryDescriptionState>(
  (ref) => EntryDescriptionViewModel(),
);

class EntryDescriptionViewModel extends StateNotifier<EntryDescriptionState> {
  EntryDescriptionViewModel() : super(const EntryDescriptionState());

  changeDescription(String value) {
    state = state.copyWith(description: value);
  }
}
