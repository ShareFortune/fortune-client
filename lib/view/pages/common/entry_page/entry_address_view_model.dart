import 'package:fortune_client/view/pages/common/entry_page/entry_address_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 検索結果を表示するか
final _searchResultsIsDisplay = StateProvider((_) => false);

final entryAddressViewModelProvider =
    StateNotifierProvider<EntryAddressViewModel, EntryAddressState>(
  (ref) => EntryAddressViewModel(ref),
);

class EntryAddressViewModel extends StateNotifier<EntryAddressState> {
  EntryAddressViewModel(this._ref) : super(const EntryAddressState());

  final Ref _ref;

  isDisplaySearchResults() {
    return _ref.watch(_searchResultsIsDisplay);
  }

  displaySearchResults(bool isDisplay) {
    _ref.watch(_searchResultsIsDisplay.notifier).state = isDisplay;
  }

  search(String keyword) {}
}
