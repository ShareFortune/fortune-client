import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final profileViewModelProvider =
    StateNotifierProvider.family<ProfileViewModel, ProfileState, String?>(
  (_, id) => ProfileViewModel(
    ProfileState(
      profileId: id,
      profile: const AsyncLoading(),
    ),
  )..initialize(),
);

class ProfileViewModel extends StateNotifier<ProfileState> {
  ProfileViewModel(super.state);

  Future<void> initialize() => getProfile();

  Future<void> getProfile() async {
    state = state.copyWith(
      profile: await AsyncValue.guard(() async {
        /// マイプロフィール
        if (state.isMy) {
          return Repository.profile.getCache();
        }

        return Repository.profile.getCache();
      }),
    );
  }
}
