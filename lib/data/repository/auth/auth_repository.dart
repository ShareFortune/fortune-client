import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  /// サインインしているか
  bool get isSignIn;

  /// Googleでサインイン
  Future<UserCredential?> signInWithGoogle();

  /// ログアウト
  Future<bool> logout();
}
