import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._dataSource);

  final FirebaseAuthDataSource _dataSource;

  @override
  Future<bool> signInWithGoogle() async {
    try {
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
  Future<String> getAuthenticationToken() async {
    return "token";
  }

  @override
  Future<bool> isSignIn() {
    // TODO: implement isSignIn
    throw UnimplementedError();
  }
}
