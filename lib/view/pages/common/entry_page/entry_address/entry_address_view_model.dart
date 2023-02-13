import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/common/entry_page/entry_address/entry_address_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final entryAddressViewModelProvider =
    StateNotifierProvider<EntryAddressViewModel, EntryAddressState>(
  (ref) => EntryAddressViewModel(getIt()),
);

class EntryAddressViewModel extends StateNotifier<EntryAddressState> {
  EntryAddressViewModel(this._repository) : super(const EntryAddressState());

  final Repository _repository;

  changeSearchResultsIsDisplay(bool isDisplay) {
    state = state.copyWith(searchResultsIsDisplay: isDisplay);
  }

  select(AddressWithId address) {
    getIt<AppRouter>().pop(address);
  }

  search(String keyword) async {
    state = state.copyWith(
      searchResults: await AsyncValue.guard(() async {
        return await _repository.addresses.search(keyword);
      }),
    );
  }
}
