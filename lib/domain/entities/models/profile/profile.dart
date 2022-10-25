import 'package:fortune_client/domain/entities/const/types.dart';
import 'package:fortune_client/domain/entities/enum/cigarette_frequency.dart';
import 'package:fortune_client/domain/entities/enum/drink_frequency.dart';
import 'package:fortune_client/domain/entities/enum/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    required ProfileID? id,
    required UserID userId,
    required DateTime birthday,
    required Gender gender,
    required DrinkFrequency drinkFrequency, // お酒をよく飲むか
    required CigaretteFrequency cigaretteFrequency, // タバコをよく吸うか
    required String selfIntroduction, // 自己紹介文(nullalble)
    required String countryID, // 住んでいる国ID
    required String prefectureID, // 住んでいる都道府県ID
    required String cityID, // 住んでいる都市ID
    required String occupationID, // 職業ID
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
