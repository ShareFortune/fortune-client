// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_profile_form.freezed.dart';
part 'create_profile_form.g.dart';

@freezed
class ProfileForm with _$ProfileForm {
  factory ProfileForm({
    ///
    /// 名前
    ///
    @JsonKey(name: 'name') required String name,

    ///
    /// 性別
    ///
    @JsonKey(name: 'gender') required String gender,

    ///
    /// アイコン画像
    ///
    @JsonKey(name: 'files') required Map<String, dynamic> images,

    ///
    /// 居住地
    ///
    @JsonKey(name: 'addressId') required int addressId,

    ///
    /// 身長
    ///
    @JsonKey(name: 'height') int? height,

    ///
    /// お酒をよく飲むか
    ///
    @JsonKey(name: 'drinkFrequency') String? drinkFrequency,

    ///
    /// タバコをよく吸うか
    ///
    @JsonKey(name: 'cigaretteFrequency') String? cigaretteFrequency,

    ///
    /// 自己紹介文
    ///
    @JsonKey(name: 'selfIntroduction') String? selfIntroduction,

    ///
    /// 職業ID
    ///
    @JsonKey(name: 'occupationId') int? occupationId,

    ///
    /// タグ
    ///
    @JsonKey(name: 'tagIds') List<String>? tagIds,
  }) = _ProfileForm;

  factory ProfileForm.fromJson(Map<String, dynamic> json) =>
      _$ProfileFormFromJson(json);
}
