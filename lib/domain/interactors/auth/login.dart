import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/usecases/auth/login.dart';

import 'package:fortune_client/core/usecases/usecase.dart';

class LoginInteractor implements LoginUseCase {
  final AuthRepository repository;

  LoginInteractor(this.repository);

  @override
  Future<LoginResults> handle(NoParams params) async {
    try {
      /// Firebase login
      final result = await repository.signInWithGoogle();

      ///
      /// Get token
      ///
      /// Create bearer token
      ///
      /// 初回ログインならGo Serverでユーザー作成
      ///
      /// 成功したら Save token
      ///

      return LoginResults(isLogin: result);
    } catch (e) {
      rethrow;
    }
  }
}
