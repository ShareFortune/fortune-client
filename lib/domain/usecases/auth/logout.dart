import '../core/usecases/usecase.dart';

abstract class LogoutUseCase implements UseCase<LogoutResults, NoParams> {}

class LogoutResults {
  final bool isLogout;

  LogoutResults({required this.isLogout});
}
