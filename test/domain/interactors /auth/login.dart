import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/usecases/auth/login.dart';
import 'package:fortune_client/domain/usecases/core/usecases/usecase.dart';
import 'package:fpdart/src/either.dart';
import 'package:fortune_client/domain/usecases/core/error/failures.dart';

class LoginInteractor implements LoginUseCase {
  final AuthRepository repository;

  LoginInteractor(this.repository);

  @override
  Future<Either<Failure, LoginResults>> handle(NoParams params) {
    // TODO: implement handle
    throw UnimplementedError();
  }

  // @override
  // Future<LoginResults> handle(LoginParams params) async {
  //   final result = LoginResults(isLogin: true);
  //   return result;
  // }
}
