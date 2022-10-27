import 'package:fortune_client/domain/entities/models/address/address.dart';
import 'package:fortune_client/domain/entities/models/profile/profile.dart';
import 'package:fortune_client/domain/repositories/profile.dart';
import 'package:fortune_client/domain/usecases/core/error/failures.dart';
import 'package:fortune_client/domain/usecases/profile/update.dart';
import 'package:fpdart/fpdart.dart';

class ProfileUpdateInteractor implements ProfileUpdateUseCase {
  final ProfileRepository repository;

  ProfileUpdateInteractor(this.repository);

  @override
  Future<Either<Failure, ProfileUpdateResults>> handle(
      ProfileUpdateParams params) async {
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
      occupationID: params.occupationID,
    );

    final newProfileID = await repository.update(profile);
    return newProfileID.match<Future<Either<Failure, ProfileUpdateResults>>>(
      (l) async => Either.left(l),
      (r) async {
        return Either.of(ProfileUpdateResults());
      },
    );
  }
}
