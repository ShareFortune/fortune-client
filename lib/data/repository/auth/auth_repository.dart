import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  bool get isSignIn;

  /// Firebase ID
  String get firebaseId;

  /// Token
  Future<String> idToken();

  /// Googleでサインイン
  Future<UserCredential?> signInWithGoogle();

  /// ログアウト
  Future<bool> logout();
}
