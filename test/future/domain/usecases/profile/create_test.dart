import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/repositories/profile.dart';
import 'package:fortune_client/domain/usecases/profile/create.dart';
import 'package:fortune_client/injector.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'create_test.mocks.dart';

@GenerateMocks([AuthRepository, ProfileRepository])
void main() {
  /// テスト対象
  late final ProfileCreateUseCase useCase;
  late final MockAuthRepository authRepository;
  late final MockProfileRepository profileRepository;

  setUp(() {
    authRepository = MockAuthRepository();
    profileRepository = MockProfileRepository();
    final container = ProviderContainer(
      overrides: [
        Repository.auth.overrideWithValue(authRepository),
        Repository.profile.overrideWithValue(profileRepository),
      ],
    );
    useCase = container.read(UseCase.profileCreate);
  });

  test("名前が入力されていなかったらエラーを返す。", () async {
    when(authRepository.getAuthenticationToken())
        .thenAnswer((_) async => "access token");
    when(profileRepository.create(any, profile: any))
        .thenAnswer((_) async => "New profile id");
  });
}
