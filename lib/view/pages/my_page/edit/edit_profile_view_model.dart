import 'package:fortune_client/data/model/core/base/tag/tag.dart';
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

  List<ProfileImage> get images => [...state.images];

  void addImage(ProfileImage image) {
    state = state.copyWith(images: images..add(image));
  }

  void removeImage(int index) {
    state = state.copyWith(images: images..removeAt(index));
  }

  void changeImage(int index, ProfileImage image) {
    state = state.copyWith(
      images: images
        ..removeAt(index)
        ..insert(index, image),
    );
  }

  void changeIntroduction(String introduction) {
    state = state.copyWith(
      profile: state.profile.copyWith(selfIntroduction: introduction),
    );
  }

  void changeTags(List<Tag> tags) {
    state = state.copyWith(
      profile: state.profile.copyWith(tags: tags),
    );
  }

  void changeName(String name) {
    state = state.copyWith(profile: state.profile.copyWith(name: name));
  }
}
