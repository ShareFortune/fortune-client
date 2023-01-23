import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/profile/update/profile_update_state.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final profileUpdateViewModelProvider =
    StateNotifierProvider<ProfileUpdateViewModel, ProfileUpdateState>(
  (ref) => ProfileUpdateViewModel(sl())..initialize(),
);

class ProfileUpdateViewModel extends StateNotifier<ProfileUpdateState> {
  ProfileUpdateViewModel(this._repository) : super(const ProfileUpdateState());

  final ProfileRepository _repository;

  initialize() {
    final profile = _repository.getCache();
    state = state.copyWith(
      stature: profile.height,
      address: profile.address,
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
    final result = await sl<AppRouter>().push(EntryAddressRoute()) as Address?;
    state = state.copyWith(address: result ?? state.address);
  }

  update() async {
    sl<AppRouter>().pop(_repository.updateBasicInfo(
      addressId: state.address?.id,
      stature: state.stature,
      drinkFrequency: state.drinkFrequency?.text,
      cigaretteFrequency: state.cigaretteFrequency?.text,
    ));
  }
}
