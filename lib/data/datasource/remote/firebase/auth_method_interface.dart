import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthMethodInterface {
  /// ログイン
  Future<OAuthCredential?> login();

  /// ログアウト
  Future<void> logout();
}
