import 'package:fortune_client/domain/entities/enum/cigarette_frequency.dart';
import 'package:fortune_client/domain/entities/enum/drink_frequency.dart';
import 'package:fortune_client/domain/entities/enum/gender.dart';
import 'package:fortune_client/domain/entities/models/address/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  @Assert('name.length > 3', 'ユーザ名は3文字以上です。')
  @Assert('name.length < 10', 'ユーザ名は10文字以下です。')
  factory Profile({
    required String name,
    required Gender gender,
    required double height,
    required DrinkFrequency drinkFrequency, // お酒をよく飲むか
    required CigaretteFrequency cigaretteFrequency, // タバコをよく吸うか
    required String selfIntroduction, // 自己紹介文(nullalble)
    required Address adress, // 居住地
    required String occupationId, // 職業ID
    /// プロフィール画像
    required String mainImagePath,
    required String secondImagePath,
    required String thirdImagePath,
    required String fourthImagePath,
    required String fifthImagePath,
    required String sixthImagePath,
  }) = _Profile;
}
