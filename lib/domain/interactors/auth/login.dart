import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/usecases/auth/login.dart';

import 'package:fortune_client/domain/usecases/core/error/failures.dart';
import 'package:fortune_client/domain/usecases/core/usecases/usecase.dart';
import 'package:fpdart/fpdart.dart';

class LoginInteractor implements LoginUseCase {
  final AuthRepository repository;

  LoginInteractor(this.repository);

  @override
  Future<Either<Failure, LoginResults>> handle(NoParams params) async {
    try {
      final result = await repository.signInWithGoogle();
      return Either.of(LoginResults(isLogin: result));
    } on Failure catch (e) {
      return Either.left(e);
    }
  }
}
