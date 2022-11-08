import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/usecases/auth/logout.dart';
import 'package:fortune_client/core/usecases/usecase.dart';

class LogoutInteractor implements LogoutUseCase {
  final AuthRepository repository;

  LogoutInteractor(this.repository);

  @override
  Future<LogoutResults> handle(NoParams params) {
    // TODO: implement handle
    throw UnimplementedError();
  }

  // @override
  // Future<LogoutResults> handle(LogoutParams params) async {
  //   final result = LogoutResults(isLogout: true);
  //   return result;
  // }
}
