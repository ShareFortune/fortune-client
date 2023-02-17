import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortune_client/data/model/base/app_user/app_user.dart';

abstract class FirebaseAuthDataSource {
  /// ログイン中のユーザー
  User? get user;

  logout();
  update();
  Future<void> sigInWithGoogle();
}

abstract class AuthenticationInterface {
  getLoginResult();
  Future<AppUser?> login();
  logout();
}
