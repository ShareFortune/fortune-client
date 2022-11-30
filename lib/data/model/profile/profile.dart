import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  // @Assert('name.length > 3', 'ユーザ名は3文字以上です。')
  // @Assert('name.length < 10', 'ユーザ名は10文字以下です。')
  factory Profile({
    required String id,
    required String username,
    required String name,
    required String gender,
    required int height,
    required String drinkFrequency, // お酒をよく飲むか
    required String cigaretteFrequency, // タバコをよく吸うか
    required String selfIntroduction, // 自己紹介文(nullalble)
    required String occupation, // 職業ID
    required Map address, // 居住地
    required List tags, // 居住地

    /// プロフィール画像
    required String mainImageURL,
    required String secondImageURL,
    required String thirdImageURL,
    required String fourthImageURL,
    required String fifthImageURL,
    required String sixthImageURL,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
