import 'package:fortune_client/data/model/profile/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required String name,
    required String gender,
    required int height,
    required String drinkFrequency, // お酒をよく飲むか
    required String cigaretteFrequency, // タバコをよく吸うか
    required String selfIntroduction, // 自己紹介文(nullalble)
    required Map adress, // 居住地
    required String occupation, // 職業ID
    required List tags, // 職業ID

    /// プロフィール画像
    required String mainImageURL,
    required String secondImageURL,
    required String thirdImageURL,
    required String fourthImageURL,
    required String fifthImageURL,
    required String sixthImageURL,
  }) = _ProfileState;

  static fromEntity(Profile profile) {
    return ProfileState(
      name: profile.name,
      gender: profile.gender,
      height: profile.height,
      drinkFrequency: profile.drinkFrequency,
      cigaretteFrequency: profile.cigaretteFrequency,
      selfIntroduction: profile.selfIntroduction,
      adress: profile.address,
      tags: profile.tags,
      occupation: profile.occupation,
      mainImageURL: profile.mainImageURL,
      secondImageURL: profile.secondImageURL,
      thirdImageURL: profile.thirdImageURL,
      fourthImageURL: profile.fourthImageURL,
      fifthImageURL: profile.fifthImageURL,
      sixthImageURL: profile.sixthImageURL,
    );
  }
}
