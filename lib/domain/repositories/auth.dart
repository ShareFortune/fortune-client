import 'package:fortune_client/domain/usecases/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> signInWithGoogle();
  // Future<bool> signInWithGoogle();
  Future<bool> logout();
}
