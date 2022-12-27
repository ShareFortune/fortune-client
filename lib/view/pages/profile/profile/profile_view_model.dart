import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_state.dart';

final profileViewModelProvider = StateNotifierProvider.family<ProfileViewModel,
    AsyncValue<ProfileState>, String>((ref, id) {
  return ProfileViewModel(ref, sl())..initialize(id);
});

class ProfileViewModel extends StateNotifier<AsyncValue<ProfileState>> {
  ProfileViewModel(this._ref, this.repository) : super(const AsyncLoading());

  final Ref _ref;
  final ProfileRepository repository;

  Future<void> initialize(String id) async => await fetch(id);

  Future<void> fetch(String id) async {
    state = await AsyncValue.guard(() async {
      final profile = await repository.get(id);
      return ProfileState.fromEntity(profile);
    });
  }
}
