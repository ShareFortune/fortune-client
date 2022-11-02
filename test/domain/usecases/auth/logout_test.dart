import 'package:flutter_test/flutter_test.dart';
import 'package:fortune_client/domain/interactors/auth/logout.dart';
import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/usecases/auth/logout.dart';
import 'package:mockito/annotations.dart';

import 'logout_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  late LogoutInteractor usecase;

  setUp(() {
    usecase = LogoutInteractor(MockAuthRepository());
  });

  final LogoutParams params = LogoutParams();

  test("ログアウトができるか", () async {
    final result = await usecase.handle(params);
    // expect(result.isLogout, true);
  });
}
