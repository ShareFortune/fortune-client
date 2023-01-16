import 'package:fortune_client/data/model/profile/profile.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_page_state.freezed.dart';

@freezed
class MyPageState with _$MyPageState {
  const factory MyPageState({
    required String name,
    required String gender,
    required int height,
    required String drinkFrequency, // お酒をよく飲むか
    required String cigaretteFrequency, // タバコをよく吸うか
    required String selfIntroduction, // 自己紹介文(nullalble)
    required String adress, // 居住地
    required List<Tag> tags, // 職業ID
    required String mainImageURL, // プロフィール画像
  }) = _MyPageState;

  static from(Profile profile) {
    return MyPageState(
      name: profile.name,
      gender: profile.gender,
      height: profile.height,
      drinkFrequency: profile.drinkFrequency,
      cigaretteFrequency: profile.cigaretteFrequency,
      selfIntroduction: profile.selfIntroduction,
      adress: profile.address.text,
      tags: profile.tags,
      mainImageURL: profile.mainImageURL,
    );
  }
}
