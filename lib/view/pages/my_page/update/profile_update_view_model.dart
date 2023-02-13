import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/my_page/update/profile_update_state.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final profileUpdateViewModelProvider =
    StateNotifierProvider<ProfileUpdateViewModel, ProfileUpdateState>(
  (ref) => ProfileUpdateViewModel(getIt())..initialize(),
);

class ProfileUpdateViewModel extends StateNotifier<ProfileUpdateState> {
  ProfileUpdateViewModel(this._repository) : super(const ProfileUpdateState());

  final Repository _repository;

  initialize() {
    final profile = _repository.profile.getCache();
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
    await _repository.profile.updateBasicInfo(
      addressWithId: state.addressWithId!.id < 0 ? null : state.addressWithId,
      stature: state.stature,
      drinkFrequency: state.drinkFrequency,
      cigaretteFrequency: state.cigaretteFrequency,
    );
    await getIt<AppRouter>().pop();
  }
}
