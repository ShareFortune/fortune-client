import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';
import 'package:fortune_client/view/pages/my_page/edit/edit_profile_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final editProfileViewModelProvider = StateNotifierProvider.family<
    EditProfileViewModel,
    EditProfileState,
    GetV1ProfilesResponse>((ref, profile) {
  return EditProfileViewModel(
    EditProfileState(
      profile: profile,
      images: profile.images().map((e) => ProfileImage.url(e)).toList(),
    ),
  );
});

class EditProfileViewModel extends StateNotifier<EditProfileState> {
  EditProfileViewModel(super.state);
}
