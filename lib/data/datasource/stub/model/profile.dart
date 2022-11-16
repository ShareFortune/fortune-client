import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/data/model/profile/profile.dart';

const tName = "name";
const tGender = Gender.man;
const tHeight = 177.0;
const tDrinkFrequency = DrinkFrequency.never;
const tCigaretteFrequency = CigaretteFrequency.never;
const tSelfIntroduction = "name";
const tOccupationId = "name";
const tImagePath = "name";
const tAdress = Address(
  countryId: 1,
  prefectureId: 1,
  cityId: 1,
);

final tProfile = Profile(
  name: tName,
  gender: tGender,
  height: tHeight,
  drinkFrequency: tDrinkFrequency,
  cigaretteFrequency: tCigaretteFrequency,
  selfIntroduction: tSelfIntroduction,
  occupationId: tOccupationId,
  adress: tAdress,
  mainImagePath: tImagePath,
  secondImagePath: tImagePath,
  thirdImagePath: tImagePath,
  fourthImagePath: tImagePath,
  fifthImagePath: tImagePath,
  sixthImagePath: tImagePath,
);
