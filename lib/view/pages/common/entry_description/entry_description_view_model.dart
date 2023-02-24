import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/common/entry_description/entry_description_state.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final entryDescriptionViewModelProvider =
    StateNotifierProvider<EntryDescriptionViewModel, EntryDescriptionState>(
  (ref) => EntryDescriptionViewModel(const EntryDescriptionState()),
);

class EntryDescriptionViewModel extends StateNotifier<EntryDescriptionState> {
  EntryDescriptionViewModel(super.state);

  changeDescription(String value) {
    state = state.copyWith(description: value);
  }

  save() {
    getIt<AppRouter>().pop(state.description);
  }
}
