import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/data/model/core/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/core/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';
import 'package:fortune_client/view/pages/my/edit/edit_profile_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final editProfileViewModelProvider = StateNotifierProvider.family<
    EditProfileViewModel,
    EditProfileState,
    GetV1ProfilesResponse>((ref, profile) {
  return EditProfileViewModel(
    EditProfileState(
      profile: profile,
      images: profile.images().map((e) => ProfileImage.url(e)).toList(),
    ),
  );
});

class EditProfileViewModel extends StateNotifier<EditProfileState> {
  EditProfileViewModel(super.state);

  List<ProfileImage> get images => [...state.images];

  /// 画像を追加する
  void addImage(ProfileImage image) {
    state = state.copyWith(images: images..add(image));
  }

  /// 画像を削除する
  void removeImage(int index) {
    state = state.copyWith(images: images..removeAt(index));
  }

  /// 画像を更新する
  void changeImage(int index, ProfileImage image) {
    state = state.copyWith(
      images: images
        ..removeAt(index)
        ..insert(index, image),
    );
  }

  /// 住所を更新する
  void changeAddress(Address address) {
    state = state.copyWith(profile: state.profile.copyWith(address: address));
  }

  /// 自己紹介を更新する
  void changeIntroduction(String selfIntroduction) {
    state = state.copyWith(
      profile: state.profile.copyWith(selfIntroduction: selfIntroduction),
    );
  }

  /// 趣味を更新する
  void changeTags(List<Tag> tags) {
    state = state.copyWith(
      profile: state.profile.copyWith(tags: tags),
    );
  }

  /// 名前を更新する
  void changeName(String name) {
    state = state.copyWith(profile: state.profile.copyWith(name: name));
  }

  /// 身長を更新する
  void changeHeight(int height) {
    state = state.copyWith(profile: state.profile.copyWith(height: height));
  }

  /// 飲酒頻度を更新する
  void changeDrinkFrequency(DrinkFrequency drinkFrequency) {
    state = state.copyWith(
      profile: state.profile.copyWith(drinkFrequency: drinkFrequency),
    );
  }

  /// 喫煙頻度を更新する
  void changeCigaretteFrequency(CigaretteFrequency cigaretteFrequency) {
    state = state.copyWith(
      profile: state.profile.copyWith(cigaretteFrequency: cigaretteFrequency),
    );
  }
}
