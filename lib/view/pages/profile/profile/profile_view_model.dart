import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final profileViewModelProvider = StateNotifierProvider.family<ProfileViewModel,
    AsyncValue<ProfileState>, String>(
  (_, id) => ProfileViewModel(sl())..initialize(id),
);

class ProfileViewModel extends StateNotifier<AsyncValue<ProfileState>> {
  ProfileViewModel(this._repository) : super(const AsyncLoading());

  final ProfileRepository _repository;

  Future<void> initialize(String id) async {
    await fetchProfile();
  }

  Future<void> fetchProfile() async {
    state = await AsyncValue.guard(() async {
      final profile = await _repository.get();
      return ProfileState.from(profile);
    });
  }
}
