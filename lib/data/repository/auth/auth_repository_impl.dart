import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';
import 'package:fortune_client/data/repository/debug/debug_repository.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._dataSource, this._debugRepository);
  final DebugRepository _debugRepository;
  final FirebaseAuthDataSource _dataSource;

  bool isAutomaticLogin = false;

  User? get _user => _dataSource.user;

  @override
  String get firebaseId => _user!.uid;

  @override
  bool isLogin() {
    if (isAutomaticLogin) return true;
    return _debugRepository.isDummyRoginApi() ? true : _user != null;
  }

  @override
  Future<String> idToken() async => await _user!.getIdToken();

  @override
  Future<bool> logout() async {
    return false;
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
  Future<void> signInWithApple() async {
    try {
      await _dataSource.sigInWithGoogle();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> signInWithTwitter() async {
    try {
      await _dataSource.sigInWithGoogle();
    } catch (e) {
      rethrow;
    }
  }
}
