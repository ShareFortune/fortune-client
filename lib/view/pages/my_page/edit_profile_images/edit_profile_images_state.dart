import 'dart:io';

import 'package:fortune_client/data/model/enum/profile_images_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_images_state.freezed.dart';

@freezed
class EditProfileImagesState with _$EditProfileImagesState {
  const EditProfileImagesState._();
  const factory EditProfileImagesState(
    List<EditProfileImagesStateItem> images,
  ) = _EditProfileImagesState;

  /// タイプに応じた画像データを取得
  EditProfileImagesStateItem image(ProfileImagesType type) {
    return images[images.indexWhere((element) => element.type == type)];
  }
}

@freezed
class EditProfileImagesStateItem with _$EditProfileImagesStateItem {
  const EditProfileImagesStateItem._();
  const factory EditProfileImagesStateItem({
    required ProfileImagesType type,

    /// 削除したか
    @Default(false) bool isDeleted,

    /// 更新前
    String? imageUrl,

    /// 更新後
    File? updateFile,
  }) = _EditProfileImagesStateItem;

  /// 画像を表示するか
  bool get isDisplay {
    /// 削除した場合は表示しない
    if (isDeleted) {
      return false;
    }

    /// URLまたは更新画像が存在する場合はどちらかを表示する
    if (imageUrl != null || updateFile != null) {
      return true;
    }

    /// 表示画像が存在しない
    return false;
  }
}
