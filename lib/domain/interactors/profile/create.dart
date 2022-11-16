import 'package:fortune_client/domain/entities/models/address/address.dart';
import 'package:fortune_client/domain/entities/models/profile/profile.dart';
import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/repositories/profile.dart';
import 'package:fortune_client/domain/usecases/profile/create.dart';

class ProfileCreateInteractor implements ProfileCreateUseCase {
  final AuthRepository _authRepository;
  final ProfileRepository _profileRepository;

  ProfileCreateInteractor(
    this._authRepository,
    this._profileRepository,
  );

  @override
  handle(ProfileCreateParams params) async {
    ///
    /// バリデーション
    ///
    /// トークン取得
    ///
    /// 作成
    ///
    /// 作成したプロフィールIDを返す
    ///
    ///
    try {
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

      final token = await _authRepository.getAuthenticationToken();

      final result = await _profileRepository.create(token, profile: profile);
      return ProfileCreateResults(result);
    } catch (e) {
      rethrow;
    }
  }
}
