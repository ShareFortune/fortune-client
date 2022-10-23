import 'package:flutter_test/flutter_test.dart';
import 'package:fortune_client/domain/interactors/auth/login.dart';
import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/usecases/auth/login.dart';

import 'package:mockito/annotations.dart';
import 'login_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  late LoginInteractor usecase;

  setUp(() {
    usecase = LoginInteractor(MockAuthRepository());
  });

  final LoginParams params = LoginParams();

  group("ログインができるか", () {
    test("ログインができるか", () async {
      final result = await usecase.handle(params);
      expect(result.isLogin, true);
    });
  });
}
