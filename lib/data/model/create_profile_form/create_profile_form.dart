import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_profile_form.freezed.dart';

@freezed
class CreateProfileForm with _$CreateProfileForm {
  factory CreateProfileForm({
    @Default("") String name,
    @Default("") String gender,
    @Default(170) int height,
    @Default("") String drinkFrequency, // お酒をよく飲むか
    @Default("") String cigaretteFrequency, // タバコをよく吸うか
    @Default("") String selfIntroduction, // 自己紹介文(nullalble)
    @Default(0) int occupationId, // 職業ID
    @Default(0) int addressId, // 居住地
    @Default([]) List<String> tags, // 居住地

    /// アイコン画像
    @Default("") String iconImage,

    /// サブ画像
    @Default("") String firstImage,
    @Default("") String secondImage,
    @Default("") String thirdImage,
    @Default("") String fourthImage,
  }) = _CreateProfileForm;
}
