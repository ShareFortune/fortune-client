import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_images_state.freezed.dart';

@freezed
class EditProfileImagesState with _$EditProfileImagesState {
  const factory EditProfileImagesState({
    required EditProfileImagesStateItem mainImage,
    required EditProfileImagesStateItem secondImage,
    required EditProfileImagesStateItem thirdImage,
    required EditProfileImagesStateItem fourthImage,
    required EditProfileImagesStateItem fifthImage,
    required EditProfileImagesStateItem sixthImage,
  }) = _EditProfileImagesState;
}

@freezed
class EditProfileImagesStateItem with _$EditProfileImagesStateItem {
  const factory EditProfileImagesStateItem({
    /// 削除したか
    @Default(false) bool isDeleted,

    /// 編集したか
    @Default(false) bool isEdited,

    /// 更新前
    String? url,

    /// 更新後
    File? updateFile,
  }) = _EditProfileImagesStateItem;
}
