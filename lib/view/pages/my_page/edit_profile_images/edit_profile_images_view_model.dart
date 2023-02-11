import 'dart:io';

import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/data/model/enum/profile_images_type.dart';
import 'package:fortune_client/view/pages/my_page/edit_profile_images/edit_profile_images_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final editProfilePictureViewModelProvider = StateNotifierProvider<
    EditProfileImagesViewModel, AsyncValue<EditProfileImagesState>>(
  (_) => EditProfileImagesViewModel(sl())..initialize(),
);

class EditProfileImagesViewModel
    extends StateNotifier<AsyncValue<EditProfileImagesState>> {
  EditProfileImagesViewModel(this._profileRepository)
      : super(const AsyncLoading());

  final ProfileRepository _profileRepository;

  Future<void> initialize() async {
    state = await AsyncValue.guard(() async {
      final result = _profileRepository.getCache();
      return EditProfileImagesState(
        ProfileImagesType.values.map((profileImageType) {
          return EditProfileImagesStateItem(
            type: profileImageType,
            imageUrl: profileImageType.imageURL(result),
          );
        }).toList(),
      );
    });
  }

  /// ステート書き換え
  void updateImageLocally(ProfileImagesType type, File? file) {
    final data = state.value!;
    state = AsyncData(
      data.copyWith(
        images: data.images.map((image) {
          if (image.type != type) return image;
          return image.copyWith(
            isDeleted: file == null,
            updateFile: file,
          );
        }).toList(),
      ),
    );
  }

  /// 画像編集
  /// [File]nullの場合は削除
  /// [ProfileImagesType]に応じて保存
  Future<void> updateImage(ProfileImagesType type, File? file) async {
    updateImageLocally(type, file);
    await _profileRepository.saveProfileImageByType(type, file);
    await _profileRepository.updateProfileImages();
    _profileRepository.get();
  }

  /// マイプロフィール
  navigateToProfile() async {
    await sl<AppRouter>().push(ProfileRoute(id: null));
  }
}
