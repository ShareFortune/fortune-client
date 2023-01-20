import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/repository/addresses/addresses_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/common/entry_page/entry_address_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 検索結果を表示するか
final _searchResultsIsDisplay = StateProvider((_) => false);

final entryAddressViewModelProvider =
    StateNotifierProvider<EntryAddressViewModel, EntryAddressState>(
  (ref) => EntryAddressViewModel(ref, sl()),
);

class EntryAddressViewModel extends StateNotifier<EntryAddressState> {
  EntryAddressViewModel(this._ref, this._addressesRepository)
      : super(const EntryAddressState());

  final Ref _ref;
  final AddressesRepository _addressesRepository;

  isDisplaySearchResults() {
    return _ref.watch(_searchResultsIsDisplay);
  }

  displaySearchResults(bool isDisplay) {
    _ref.watch(_searchResultsIsDisplay.notifier).state = isDisplay;
  }

  search(String keyword) async {
    final result = await AsyncValue.guard(() async {
      return await _addressesRepository.search(keyword).then((value) {
        return value.addresses;
      });
    });
    state = state.copyWith(searchResults: result);
  }
}
