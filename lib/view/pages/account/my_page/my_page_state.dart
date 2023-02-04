import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'my_page_state.freezed.dart';

@freezed
class MyPageState with _$MyPageState {
  const factory MyPageState({
    required AsyncValue<GetV1ProfilesResponse> profile,
    // required String name,
    // required String gender,
    // required int? height,
    // required String? drinkFrequency, // お酒をよく飲むか
    // required String? cigaretteFrequency, // タバコをよく吸うか
    // required String? selfIntroduction, // 自己紹介文(nullalble)
    // required String adress, // 居住地
    // required List<Tag>? tags, // 職業ID
    // required String mainImageURL, // プロフィール画像
  }) = _MyPageState;

  // static from(GetV1ProfilesResponse profile) {
  //   return MyPageState(
  //     name: profile.name,
  //     gender: profile.gender.text,
  //     height: profile.height,
  //     drinkFrequency: profile.drinkFrequency?.text,
  //     cigaretteFrequency: profile.cigaretteFrequency?.text,
  //     selfIntroduction: profile.selfIntroduction,
  //     adress: profile.address.text,
  //     tags: profile.tags,
  //     mainImageURL: profile.mainImageURL,
  //   );
  // }
}
