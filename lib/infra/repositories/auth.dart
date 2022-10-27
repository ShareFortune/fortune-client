import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/infra/datasources/firebase/auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._dataSource);

  final FirebaseAuthDataSource _dataSource;

  @override
  Future<bool> signInWithGoogle() async {
    // await _dataSource.signInWithGoogle();
    // return _dataSource.isSignIn;
    return true;
  }

  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
