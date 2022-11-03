import 'package:fortune_client/domain/entities/enum/cigarette_frequency.dart';
import 'package:fortune_client/domain/entities/enum/drink_frequency.dart';
import 'package:fortune_client/domain/entities/enum/gender.dart';
import 'package:fortune_client/domain/entities/models/tag/tag.dart';
import 'package:fortune_client/domain/usecases/core/usecases/usecase.dart';

abstract class ProfileCreateUseCase
    implements UseCase<ProfileCreateParams, ProfileCreateResults> {}

class ProfileCreateParams {
  final String mainImagePath;
  final String secondImagePath;
  final String thirdImagePath;
  final String fourthImagePath;
  final String fifthImagePath;
  final String sixthImagePath;

  final String name;
  final Gender gender;
  final int height;
  final DrinkFrequency drinkFrequency;
  final CigaretteFrequency cigaretteFrequency;
  final String selfIntroduction;
  final int countryId;
  final int prefectureId;
  final int cityId;
  final List<Tag> tag;
  final String occupationID;

  ProfileCreateParams({
    required this.mainImagePath,
    required this.secondImagePath,
    required this.thirdImagePath,
    required this.fourthImagePath,
    required this.fifthImagePath,
    required this.sixthImagePath,
    required this.name,
    required this.gender,
    required this.height,
    required this.drinkFrequency,
    required this.cigaretteFrequency,
    required this.selfIntroduction,
    required this.countryId,
    required this.prefectureId,
    required this.cityId,
    required this.tag,
    required this.occupationID,
  });
}

class ProfileCreateResults {}
