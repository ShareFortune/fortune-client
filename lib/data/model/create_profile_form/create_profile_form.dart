// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_profile_form.freezed.dart';
part 'create_profile_form.g.dart';

@freezed
class CreateProfileForm with _$CreateProfileForm {
  factory CreateProfileForm({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'gender') required String gender,
    @JsonKey(name: 'height') required int height,
    @JsonKey(name: 'drinkFrequency') required String drinkFrequency, // お酒をよく飲むか
    @JsonKey(name: 'cigaretteFrequency')
        required String cigaretteFrequency, // タバコをよく吸うか
    @JsonKey(name: 'selfIntroduction')
        required String selfIntroduction, // 自己紹介文(nullalble)
    @JsonKey(name: 'occupationId') required int occupationId, // 職業ID
    @JsonKey(name: 'addressId') required int addressId, // 居住地
    @JsonKey(name: 'tagIds') required List<String> tags, // 居住地

    /// アイコン画像
    @JsonKey(name: 'mainImage') required String iconImage,

    /// サブ画像
    @JsonKey(name: 'secondImage') required String firstImage,
    @JsonKey(name: 'thirdImage') required String secondImage,
    @JsonKey(name: 'fourthImage') required String thirdImage,
    @JsonKey(name: 'fifthImage') required String fourthImage,
    @JsonKey(name: 'sixthImage') required String fifthImage,
  }) = _CreateProfileForm;

  factory CreateProfileForm.fromJson(Map<String, dynamic> json) =>
      _$CreateProfileFormFromJson(json);
}
