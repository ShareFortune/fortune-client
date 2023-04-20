import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_state.freezed.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    /// 編集用プロフィール写真
    required List<ProfileImage> images,
    required GetV1ProfilesResponse profile,
  }) = _EditProfileState;
}

@freezed
class ProfileImage with _$ProfileImage {
  const factory ProfileImage(
    ImageProvider image,
  ) = _ProfileImage;

  factory ProfileImage.url(String url) {
    return ProfileImage(Image.network(url).image);
  }
}
