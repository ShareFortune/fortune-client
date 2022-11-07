import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/infra/datasources/firebase/auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._dataSource);

  final FirebaseAuthDataSource _dataSource;

  @override
  Future<bool> signInWithGoogle() async {
    try {
      print("AuthRepositoryImpl");
      final result = await _dataSource.sigInWithGoogle();
      return result != null;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<bool> getCredentials() async {
    return _dataSource.isSignIn;
  }
}
