import 'package:fortune_client/domain/entities/enum/cigarette_frequency.dart';
import 'package:fortune_client/domain/entities/enum/drink_frequency.dart';
import 'package:fortune_client/domain/entities/enum/gender.dart';
import 'package:fortune_client/domain/entities/models/address/address.dart';
import 'package:fortune_client/domain/entities/models/profile/profile.dart';

const testName = "name";
const testGender = Gender.man;
const testHeight = 177.0;
const testDrinkFrequency = DrinkFrequency.never;
const testCigaretteFrequency = CigaretteFrequency.never;
const testSelfIntroduction = "name";
const testOccupationId = "name";
const testImagePath = "name";
const testAdress = Address(
  countryId: 1,
  prefectureId: 1,
  cityId: 1,
);

Profile createTestProfile({
  String name = testName,
  Gender gender = testGender,
  double height = testHeight,
  DrinkFrequency drinkFrequency = testDrinkFrequency,
  CigaretteFrequency cigaretteFrequency = testCigaretteFrequency,
  String selfIntroduction = testSelfIntroduction,
  String occupationId = testOccupationId,
  Address adress = testAdress,
  String imagePath = testImagePath,
}) {
  return Profile(
    name: name,
    gender: gender,
    height: height,
    drinkFrequency: drinkFrequency,
    cigaretteFrequency: cigaretteFrequency,
    selfIntroduction: selfIntroduction,
    adress: adress,
    occupationId: occupationId,
    mainImagePath: imagePath,
    secondImagePath: imagePath,
    thirdImagePath: imagePath,
    fourthImagePath: imagePath,
    fifthImagePath: imagePath,
    sixthImagePath: imagePath,
  );
}
