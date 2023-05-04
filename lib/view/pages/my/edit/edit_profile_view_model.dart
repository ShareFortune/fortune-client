import 'dart:io';

import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/profile/profile_request/profile_request.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/my/edit/edit_profile_page.dart';
import 'package:fortune_client/view/pages/my/edit/edit_profile_state.dart';
import 'package:fortune_client/view/pages/my/my/my_page_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_profile_view_model.g.dart';

@riverpod
class EditProfileViewModel extends _$EditProfileViewModel {
  @override
  EditProfileState build(EditProfilePageArguments arguments) {
    return EditProfileState(
      profile: arguments.profile,
      images: arguments.profile.images().map((e) {
        return ProfileImage.url(e);
      }).toList(),
    );
  }

  ProfileResponse get profile => state.profile;
  List<ProfileImage> get images => [...state.images];

  /// 画像を更新する
  void updateImages(List<ProfileImage> images) {
    state = state.copyWith(isEditedProfileImage: true, images: images);
  }

  /// 画像を追加する
  void addImage(File file) {
    Repository.profile.addProfileImage(file);
    updateImages(images..add(ProfileImage.file(file)));
  }

  /// 画像を削除する
  Future<void> removeImage(int index) async {
    Repository.profile.removeProfileImageByIndex(index);
    updateImages(images..removeAt(index));
  }

  /// 画像を更新する
  Future<void> updateImage(int index, File file) async {
    Repository.profile.updateProfileImageByIndex(index, file);
    updateImages(images
      ..removeAt(index)
      ..insert(index, ProfileImage.file(file)));
  }

  /// 基本情報を更新する
  void _updateBasicInfo(EditProfileState newState) {
    state = newState.copyWith(isEditedBasicInfo: true);
  }

  /// 住所を更新する
  void updateAddress(Address address) {
    _updateBasicInfo(
      state.copyWith(profile: profile.copyWith(address: address)),
    );
  }

  /// 自己紹介を更新する
  void updateIntroduction(String selfIntroduction) {
    state = state.copyWith(
      isEditedIntroduction: true,
      profile: profile.copyWith(selfIntroduction: selfIntroduction),
    );
  }

  /// 趣味を更新する
  void updateTags(List<Tag> tags) {
    state = state.copyWith(
      isEditedTags: true,
      profile: profile.copyWith(tags: tags),
    );
  }

  /// 名前を更新する
  void updateName(String name) {
    _updateBasicInfo(state.copyWith(profile: profile.copyWith(name: name)));
  }

  /// 身長を更新する
  void updateHeight(int? height) {
    _updateBasicInfo(state.copyWith(profile: profile.copyWith(height: height)));
  }

  /// 飲酒頻度を更新する
  void updateDrinkFrequency(DrinkFrequency? drinkFrequency) {
    _updateBasicInfo(state.copyWith(
      profile: profile.copyWith(drinkFrequency: drinkFrequency),
    ));
  }

  /// 喫煙頻度を更新する
  void updateCigaretteFrequency(CigaretteFrequency? cigaretteFrequency) {
    _updateBasicInfo(state.copyWith(
      profile: profile.copyWith(cigaretteFrequency: cigaretteFrequency),
    ));
  }

  /// プロフィールを更新する
  Future<void> updateProfile() async {
    await Repository.profile.update(
      ProfileUpdateRequest(
        name: state.profile.name,
        gender: state.profile.gender,
        addressId: await Repository.address.getId(state.profile.address),
        files: ProfileFiles.base64List(Repository.profile.getProfileImages()),
        height: state.profile.height,
        drinkFrequency: state.profile.drinkFrequency,
        cigaretteFrequency: state.profile.cigaretteFrequency,
        selfIntroduction: state.profile.selfIntroduction,
        occupationId: null,
        tagIds: state.profile.tags.map((e) => e.id).toList(),
      ),
    );
    ref.invalidateSelf();
    ref.invalidate(myPageViewModelProvider);
  }
}
