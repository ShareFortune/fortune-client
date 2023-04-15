import 'package:fortune_client/data/model/core/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/core/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/core/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/core/enum/gender.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/account/create/entry_detailed_profile/detailed_profile_entry_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final detailedProfileEntryViewModelProvider = StateNotifierProvider<
    DetailedProfileEntryViewModel, DetailedProfileEntryState>(
  (ref) => DetailedProfileEntryViewModel(const DetailedProfileEntryState()),
);

class DetailedProfileEntryViewModel
    extends StateNotifier<DetailedProfileEntryState> {
  DetailedProfileEntryViewModel(super.state);

  bool isPossibleToNext() {
    return state.name != null &&
        state.gender != null &&
        state.addressWithId != null;
  }

  changeName(String value) {
    state = state.copyWith(name: value);
  }

  changeGender(Gender value) {
    state = state.copyWith(gender: value);
  }

  changeStature(int value) {
    state = state.copyWith(stature: value);
  }

  changeDrinkFrequency(DrinkFrequency value) {
    state = state.copyWith(drinkFrequency: value);
  }

  changeCigaretteFrequency(CigaretteFrequency value) {
    state = state.copyWith(cigaretteFrequency: value);
  }

  navigateToEntryAddress() async {
    // final result = await getIt<AppRouter>().push(
    //   EntryAddressRoute(),
    // ) as AddressWithId?;
    // state = state.copyWith(addressWithId: result ?? state.addressWithId);
  }

  navigateToEntryProfileicon() async {
    // await getIt<AppRouter>().push(const ProfileIconImageEntryRoute());
  }
}
