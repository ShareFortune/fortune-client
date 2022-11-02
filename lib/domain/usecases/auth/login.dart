import '../core/usecases/usecase.dart';

abstract class LoginUseCase implements UseCase<NoParams, LoginResults> {}

class LoginResults {
  final bool isLogin;

  LoginResults({
    required this.isLogin,
  });
}
