import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortune_client/data/datasource/remote/firebase/apple_sign_in_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/google_sign_in_data_source.dart';
import 'package:fortune_client/data/model/base/app_user/app_user.dart';
import 'package:fortune_client/data/model/enum/auth_type.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  ///

  User? get _user => _dataSource.user;

  @override
  String get firebaseId => _user!.uid;

  @override
  bool get isLogin => _user != null;

  @override
  Future<String> idToken() => _user!.getIdToken();

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

  @override
  Future<AppUser?> signIn(AuthType type) async {
    switch (type) {
      case AuthType.twitter:
        return null;
      case AuthType.apple:
        return AppleSignInDataSource.instance.login();
      case AuthType.google:
        return GoogleSignInDataSource.instance.login();
    }
  }
}
