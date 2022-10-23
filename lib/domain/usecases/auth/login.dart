import '../core/usecase.dart';

abstract class LoginUseCase implements UseCase<LoginParams, LoginResults> {}

class LoginParams {}

class LoginResults {
  final bool isLogin;

  LoginResults({
    required this.isLogin,
  });
}
