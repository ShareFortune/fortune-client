import '../core/usecase.dart';

abstract class LogoutUseCase implements UseCase<LogoutParams, LogoutResults> {}

class LogoutParams {}

class LogoutResults {
  final bool isLogout;

  LogoutResults({required this.isLogout});
}
