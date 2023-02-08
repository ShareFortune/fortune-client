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
  const EditProfileImagesStateItem._();
  const factory EditProfileImagesStateItem({
    /// 編集したか
    @Default(false) bool isEdited,

    /// 削除したか
    @Default(false) bool isDeleted,

    /// 更新前
    String? url,

    /// 更新後
    File? updateFile,
  }) = _EditProfileImagesStateItem;

  /// 画像を表示するか
  bool isDisplay() {
    /// 削除した場合は表示しない
    if (isDeleted) {
      return false;
    }

    /// URLまたは更新画像が存在する場合はどちらかを表示する
    if (url != null || updateFile != null) {
      return true;
    }

    /// 表示画像が存在しない
    return false;
  }
}
