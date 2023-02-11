import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final profileViewModelProvider =
    StateNotifierProvider.family<ProfileViewModel, ProfileState, String?>(
  (_, id) => ProfileViewModel(
    ProfileState(
      profileId: id,
      profile: const AsyncLoading(),
    ),
    sl(),
  )..initialize(),
);

class ProfileViewModel extends StateNotifier<ProfileState> {
  ProfileViewModel(super.state, this._repository);

  final ProfileRepository _repository;

  Future<void> initialize() => getProfile();

  Future<void> getProfile() async {
    state = state.copyWith(
      profile: await AsyncValue.guard(() async {
        /// マイプロフィール
        if (state.isMy) {
          return _repository.getCache();
        }

        return _repository.getCache();
      }),
    );
  }
}
