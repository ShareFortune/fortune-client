import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._dataSource);
  final FirebaseAuthDataSource _dataSource;

  User? get _user => _dataSource.user;

  @override
  bool get isLogin => _user != null;

  @override
  String get firebaseId => _user!.uid;

  @override
  Future<String> idToken() async => await _user!.getIdToken();

  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> signInWithGoogle() async {
    try {
      await _dataSource.sigInWithGoogle();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> signInWithApple() {
    // TODO: implement signInWithApple
    throw UnimplementedError();
  }

  @override
  Future<void> signInWithTwitter() {
    // TODO: implement signInWithTwitter
    throw UnimplementedError();
  }
}
