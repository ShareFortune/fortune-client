import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final profileViewModelProvider = StateNotifierProvider.family<ProfileViewModel,
    AsyncValue<ProfileState>, String>((ref, id) {
  return ProfileViewModel(sl())..initialize(id);
});

class ProfileViewModel extends StateNotifier<AsyncValue<ProfileState>> {
  ProfileViewModel(this.repository) : super(const AsyncLoading());

  final ProfileRepository repository;

  Future<void> initialize(String id) async => await fetch(id);

  Future<void> fetch(String id) async {
    state = await AsyncValue.guard(() async {
      final profile = await repository.get(id);
      return ProfileState.fromEntity(profile);
    });
  }
}
