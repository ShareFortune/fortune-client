import 'package:fortune_client/domain/entities/models/address/address.dart';
import 'package:fortune_client/domain/entities/models/profile/profile.dart';
import 'package:fortune_client/domain/repositories/profile.dart';
import 'package:fortune_client/domain/usecases/profile/update.dart';

class ProfileUpdateInteractor implements ProfileUpdateUseCase {
  final ProfileRepository repository;

  ProfileUpdateInteractor(this.repository);

  @override
  handle(ProfileUpdateParams params) async {
    final profile = Profile(
      mainImagePath: params.mainImagePath,
      secondImagePath: params.secondImagePath,
      thirdImagePath: params.thirdImagePath,
      fourthImagePath: params.fourthImagePath,
      fifthImagePath: params.fifthImagePath,
      sixthImagePath: params.sixthImagePath,
      name: params.name,
      gender: params.gender,
      height: params.height,
      drinkFrequency: params.drinkFrequency,
      cigaretteFrequency: params.cigaretteFrequency,
      selfIntroduction: params.selfIntroduction,
      adress: Address(
        countryId: params.countryId,
        prefectureId: params.prefectureId,
        cityId: params.cityId,
      ),
      occupationId: params.occupationID,
    );

    try {
      final result = await repository.update(profile);
      return ProfileUpdateResults();
    } catch (e) {
      rethrow;
    }
  }
}
