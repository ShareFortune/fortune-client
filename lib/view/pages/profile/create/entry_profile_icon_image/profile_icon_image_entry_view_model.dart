import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:fortune_client/view/pages/profile/create/entry_profile_icon_image/profile_icon_image_entry_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

final profileIconImageEntryViewModelProvider = StateNotifierProvider<
    ProfileIconImageEntryViewModel, ProfileIconImageEntryState>(
  (ref) {
    return ProfileIconImageEntryViewModel(ref);
  },
);

class ProfileIconImageEntryViewModel
    extends StateNotifier<ProfileIconImageEntryState> {
  ProfileIconImageEntryViewModel(this._ref)
      : super(const ProfileIconImageEntryState());

  final Ref _ref;

  Future<void> pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    state = state.copyWith(imageFile: File(image.path));
  }

  onTapNextBtn(StackRouter router) async {
    if (state.imageFile != null) {
      await _pushNext(router);
    }
  }

  _pushNext(StackRouter router) async {
    await router.push(const EntryProfileSubImageRoute());
  }
}
