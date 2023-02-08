import 'dart:io';

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

  /// ---------------------------
  /// 画像削除
  /// ---------------------------
  _deleteImage(EditProfileImagesStateItem data) {
    return data.copyWith(
      isDeleted: true,
      isEdited: true,
      updateFile: null,
    );
  }

  deleteMainImage() {
    final data = state.value!;
    state = AsyncData(data.copyWith(
      mainImage: _deleteImage(data.mainImage),
    ));
  }

  deleteSecondImage() {
    final data = state.value!;
    state = AsyncData(data.copyWith(
      secondImage: _deleteImage(data.secondImage),
    ));
  }

  deleteThirdImage() {
    final data = state.value!;
    state = AsyncData(data.copyWith(
      thirdImage: _deleteImage(data.thirdImage),
    ));
  }

  deleteFourthImage() {
    final data = state.value!;
    state = AsyncData(data.copyWith(
      fourthImage: _deleteImage(data.fourthImage),
    ));
  }

  deleteFifthImage() {
    final data = state.value!;
    state = AsyncData(data.copyWith(
      fifthImage: _deleteImage(data.fifthImage),
    ));
  }

  deleteSixthImage() {
    final data = state.value!;
    state = AsyncData(data.copyWith(
      sixthImage: _deleteImage(data.sixthImage),
    ));
  }

  /// ---------------------------
  /// 画像編集
  /// ---------------------------
  _updateImage(EditProfileImagesStateItem data, File file) {
    return data.copyWith(
      isEdited: true,
      isDeleted: false,
      updateFile: file,
    );
  }

  updateMainImage(File file) {
    final data = state.value!;
    state = AsyncData(data.copyWith(
      mainImage: _updateImage(data.mainImage, file),
    ));
  }

  updateSecondImage(File file) {
    final data = state.value!;
    state = AsyncData(data.copyWith(
      secondImage: _updateImage(data.secondImage, file),
    ));
  }

  updateThirdImage(File file) {
    final data = state.value!;
    state = AsyncData(data.copyWith(
      thirdImage: _updateImage(data.thirdImage, file),
    ));
  }

  updateFourthImage(File file) {
    final data = state.value!;
    state = AsyncData(data.copyWith(
      fourthImage: _updateImage(data.fourthImage, file),
    ));
  }

  updateFifthImage(File file) {
    final data = state.value!;
    state = AsyncData(data.copyWith(
      fifthImage: _updateImage(data.fifthImage, file),
    ));
  }

  updateSixthImage(File file) {
    final data = state.value!;
    state = AsyncData(data.copyWith(
      sixthImage: _updateImage(data.sixthImage, file),
    ));
  }

  /// ---------------------------
}
