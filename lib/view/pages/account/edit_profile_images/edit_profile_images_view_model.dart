import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/account/edit_profile_images/edit_profile_images_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final editProfilePictureViewModelProvider = StateNotifierProvider<
    EditProfileImagesViewModel, AsyncValue<EditProfileImagesState>>(
  (_) => EditProfileImagesViewModel(const AsyncLoading(), sl())..initialize(),
);

class EditProfileImagesViewModel
    extends StateNotifier<AsyncValue<EditProfileImagesState>> {
  EditProfileImagesViewModel(super.state, this._profileRepository);

  final ProfileRepository _profileRepository;

  Future<void> initialize() async {
    state = await AsyncValue.guard(() async {
      final result = _profileRepository.getCache();
      return EditProfileImagesState(
        mainImage: EditProfileImagesStateItem(url: result.mainImageURL),
        secondImage: EditProfileImagesStateItem(url: result.secondImageURL),
        thirdImage: EditProfileImagesStateItem(url: result.thirdImageURL),
        fourthImage: EditProfileImagesStateItem(url: result.fourthImageURL),
        fifthImage: EditProfileImagesStateItem(url: result.fifthImageURL),
        sixthImage: EditProfileImagesStateItem(url: result.sixthImageURL),
      );
    });
  }
}
