import 'package:flutter_test/flutter_test.dart';
import 'package:fortune_client/domain/interactors/auth/login.dart';
import 'package:fortune_client/domain/repositories/auth.dart';

import 'package:fortune_client/domain/usecases/core/usecases/usecase.dart';

import 'package:mockito/annotations.dart';

@GenerateMocks([AuthRepository])
void main() {
  late LoginInteractor usecase;

  setUp(() {
    usecase = LoginInteractor(MockAuthRepository());
  });

  group("ログインができるか", () {
    test("ログインができるか", () async {
      final result = await usecase.handle(NoParams());
      // expect(result.isLogin, true);
    });
  });
}
