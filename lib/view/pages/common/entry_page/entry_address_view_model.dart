import 'package:fortune_client/view/pages/common/entry_page/entry_address_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final entryAddressViewModelProvider =
    StateNotifierProvider<EntryAddressViewModel, EntryAddressState>(
  (ref) => EntryAddressViewModel(),
);

class EntryAddressViewModel extends StateNotifier<EntryAddressState> {
  EntryAddressViewModel()
      : super(const EntryAddressState(
            adress: null, searchResults: AsyncData([])));

  search() {}
}
