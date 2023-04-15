import 'dart:io';

import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/account/create/entry_profile_icon_image/profile_icon_image_entry_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

final profileIconImageEntryViewModelProvider = StateNotifierProvider<
    ProfileIconImageEntryViewModel, ProfileIconImageEntryState>(
  (ref) => ProfileIconImageEntryViewModel(const ProfileIconImageEntryState()),
);

class ProfileIconImageEntryViewModel
    extends StateNotifier<ProfileIconImageEntryState> {
  ProfileIconImageEntryViewModel(super.state);

  Future<void> pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    state = state.copyWith(imageFile: File(image.path));
  }

  onTapNextBtn() async {
    if (state.imageFile != null) {
      await navigateToEntryProfileSubImage();
    }
  }

  navigateToEntryProfileSubImage() async {
    // await getIt<AppRouter>().push(const EntryProfileSubImageRoute());
  }
}
