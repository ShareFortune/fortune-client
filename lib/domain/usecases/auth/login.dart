import '../core/usecases/usecase.dart';

abstract class LoginUseCase implements UseCase<LoginResults, NoParams> {}

class LoginResults {
  final bool isLogin;

  LoginResults({
    required this.isLogin,
  });
}
