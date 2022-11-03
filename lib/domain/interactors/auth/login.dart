import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/usecases/auth/login.dart';

import 'package:fortune_client/domain/usecases/core/usecases/usecase.dart';

class LoginInteractor implements LoginUseCase {
  final AuthRepository repository;

  LoginInteractor(this.repository);

  @override
  Future<LoginResults> handle(NoParams params) async {
    try {
      final result = await repository.signInWithGoogle();
      return LoginResults(isLogin: result);
    } catch (e) {
      rethrow;
    }
  }
}
