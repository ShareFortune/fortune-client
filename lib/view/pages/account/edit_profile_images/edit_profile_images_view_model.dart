import 'dart:io';

import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/account/edit_profile_images/edit_profile_images_state.dart';
import 'package:fortune_client/view/pages/account/edit_profile_images/edit_profile_images_type.dart';
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
        EditProfileImagesType.values.map((profileImageType) {
          return EditProfileImagesStateItem(
            type: profileImageType,
            url: profileImageType.imageURL(result),
          );
        }).toList(),
      );
    });
  }

  /// 画像削除
  deleteImage(EditProfileImagesType type) {
    final data = state.value!;
    state = AsyncData(
      data.copyWith(
        images: data.images.map((image) {
          if (image.type != type) return image;
          return image.copyWith(
            isDeleted: true,
            isEdited: true,
            updateFile: null,
          );
        }).toList(),
      ),
    );
  }

  /// 画像編集
  updateImage(EditProfileImagesType type, File file) {
    final data = state.value!;
    state = AsyncData(
      data.copyWith(
        images: data.images.map((image) {
          if (image.type != type) return image;
          return image.copyWith(
            isEdited: true,
            isDeleted: false,
            updateFile: file,
          );
        }).toList(),
      ),
    );
  }
}
