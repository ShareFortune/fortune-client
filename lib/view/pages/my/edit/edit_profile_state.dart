import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_state.freezed.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    /// プロフィール画像を編集したか
    @Default(false) bool isEditedProfileImage,

    /// 基本情報を編集したか
    @Default(false) bool isEditedBasicInfo,

    /// 自己紹介を編集したか
    @Default(false) bool isEditedIntroduction,

    /// タグを編集したか
    @Default(false) bool isEditedTags,

    /// 編集用プロフィール写真
    required List<ProfileImage> images,
    required ProfileResponse profile,
  }) = _EditProfileState;
}

@freezed
class ProfileImage with _$ProfileImage {
  const factory ProfileImage(
    ImageProvider image,
  ) = _ProfileImage;

  factory ProfileImage.file(File file) {
    return ProfileImage(FileImage(file));
  }

  factory ProfileImage.url(String url) {
    return ProfileImage(Image.network(url).image);
  }
}
