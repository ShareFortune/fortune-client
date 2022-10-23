import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/usecases/auth/login.dart';

class LoginInteractor implements LoginUseCase {
  final AuthRepository repository;

  LoginInteractor(this.repository);

  @override
  Future<LoginResults> handle(LoginParams params) async {
    final result = LoginResults(isLogin: true);
    return result;
  }
}
