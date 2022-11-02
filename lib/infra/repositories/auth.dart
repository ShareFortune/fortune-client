import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/usecases/core/error/failures.dart';
import 'package:fortune_client/infra/datasources/firebase/auth.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._dataSource);

  final FirebaseAuthDataSource _dataSource;

  @override
  Future<Either<Failure, bool>> signInWithGoogle() async {
    try {
      final result = await _dataSource.sigInWithGoogle();
      if (result != null) {
        return Either.right(true);
      }
      return Either.right(false);
    } catch (e) {
      throw CacheFailure();
    }
  }

  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
