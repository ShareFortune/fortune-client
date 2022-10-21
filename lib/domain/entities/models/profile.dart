import '../const/types.dart';
import '../enum/cigarette_frequency.dart';
import '../enum/drink_frequency.dart';
import '../enum/gender.dart';

class Profile {
  final ProfileID? id;
  final UserID userId;
  final DateTime birthday;
  final Gender gender;
  final DrinkFrequency drinkFrequency; // お酒をよく飲むか
  final CigaretteFrequency cigaretteFrequency; // タバコをよく吸うか
  final String selfIntroduction; // 自己紹介文(nullalble)
  final String countryID; // 住んでいる国ID
  final String prefectureID; // 住んでいる都道府県ID
  final String cityID; // 住んでいる都市ID
  final String occupationID; // 職業ID

  Profile({
    this.id,
    required this.userId,
    required this.birthday,
    required this.gender,
    required this.drinkFrequency,
    required this.cigaretteFrequency,
    required this.selfIntroduction,
    required this.countryID,
    required this.prefectureID,
    required this.cityID,
    required this.occupationID,
  }); // 職業ID

}
