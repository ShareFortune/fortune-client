import 'package:fortune_client/domain/entities/models/tag.dart';

import '../../entities/enum/cigarette_frequency.dart';
import '../../entities/enum/drink_frequency.dart';
import '../../entities/enum/gender.dart';
import '../core/usecase.dart';

abstract class ProfileCreateUseCase
    implements UseCase<ProfileCreateParams, ProfileCreateResults> {}

class ProfileCreateParams {
  final String mainImagePath;
  final String secondImagePath;
  final String thirdImagePath;
  final String fourthImagePath;
  final Gender gender;
  final int height;
  final DrinkFrequency drinkFrequency;
  final CigaretteFrequency cigaretteFrequency;
  final String selfIntroduction;
  final int countryId;
  final int prefectureId;
  final int cityId;
  final List<Tag> tag;

  ProfileCreateParams({
    required this.mainImagePath,
    required this.secondImagePath,
    required this.thirdImagePath,
    required this.fourthImagePath,
    required this.gender,
    required this.height,
    required this.drinkFrequency,
    required this.cigaretteFrequency,
    required this.selfIntroduction,
    required this.countryId,
    required this.prefectureId,
    required this.cityId,
    required this.tag,
  });
}

class ProfileCreateResults {}
