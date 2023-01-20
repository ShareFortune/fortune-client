import 'package:fortune_client/data/repository/addresses/addresses_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/common/entry_page/entry_address_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final entryAddressViewModelProvider =
    StateNotifierProvider<EntryAddressViewModel, EntryAddressState>(
  (ref) => EntryAddressViewModel(sl()),
);

class EntryAddressViewModel extends StateNotifier<EntryAddressState> {
  EntryAddressViewModel(this._addressesRepository)
      : super(const EntryAddressState());

  final AddressesRepository _addressesRepository;

  changeSearchResultsIsDisplay(bool isDisplay) {
    state = state.copyWith(searchResultsIsDisplay: isDisplay);
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
