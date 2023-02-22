import 'package:fortune_client/data/model/core/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/core/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/core/enum/drink_frequency.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/my_page/update/profile_update_state.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final profileUpdateViewModelProvider =
    StateNotifierProvider<ProfileUpdateViewModel, ProfileUpdateState>(
  (ref) => ProfileUpdateViewModel(
    const ProfileUpdateState(),
  )..initialize(),
);

class ProfileUpdateViewModel extends StateNotifier<ProfileUpdateState> {
  ProfileUpdateViewModel(super.state);

  initialize() {
    final profile = Repository.profile.getCache();
    state = state.copyWith(
      stature: profile.height,
      addressWithId: AddressWithId(
        id: -1,
        country: profile.address.country,
        prefecture: profile.address.prefecture,
        city: profile.address.city,
      ),
      drinkFrequency: profile.drinkFrequency,
      cigaretteFrequency: profile.cigaretteFrequency,
    );
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
    final result = await getIt<AppRouter>().push(
      EntryAddressRoute(),
    ) as AddressWithId?;
    state = state.copyWith(addressWithId: result ?? state.addressWithId);
  }

  update() async {
    await Repository.profile.updateBasicInfo(
      addressWithId: state.addressWithId!.id < 0 ? null : state.addressWithId,
      stature: state.stature,
      drinkFrequency: state.drinkFrequency,
      cigaretteFrequency: state.cigaretteFrequency,
    );
    await getIt<AppRouter>().pop();
  }
}