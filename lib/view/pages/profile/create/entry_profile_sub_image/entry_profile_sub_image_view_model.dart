import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:fortune_client/view/pages/profile/create/entry_profile_sub_image/entry_profile_sub_image_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

final entryProfileSubImageViewModelProvider = StateNotifierProvider<
    EntryProfileSubImageViewModel, EntryProfileSubImageState>(
  (ref) {
    return EntryProfileSubImageViewModel(ref);
  },
);

class EntryProfileSubImageViewModel
    extends StateNotifier<EntryProfileSubImageState> {
  EntryProfileSubImageViewModel(this._ref)
      : super(const EntryProfileSubImageState());

  final Ref _ref;

  Future<void> pickImageFirst() async {
    state = state.copyWith(firstImageFile: await _pickImage());
  }

  Future<void> pickImageSecond() async {
    state = state.copyWith(secondImageFile: await _pickImage());
  }

  Future<void> pickImageThird() async {
    state = state.copyWith(thirdImageFile: await _pickImage());
  }

  Future<void> pickImageFourth() async {
    state = state.copyWith(fourthImageFile: await _pickImage());
  }

  Future<File?> _pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    return File(image.path);
  }

  onTapNextBtn(StackRouter router) async {
    /// Stateを親ウィジットのViewModelに保存
    ///
    await _pushNext(router);
  }

  _pushNext(StackRouter router) async {
    print("push");
    // await router.push(const ProfileIconImageEntryRoute());
  }
}
