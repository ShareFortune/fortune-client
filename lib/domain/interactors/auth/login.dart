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
    final result = await repository.signInWithGoogle();

    return result.match<Future<Either<Failure, LoginResults>>>(
      (l) async => Either.left(l),
      (r) async {
        return Either.of(LoginResults(isLogin: r));
      },
    );
  }
}
