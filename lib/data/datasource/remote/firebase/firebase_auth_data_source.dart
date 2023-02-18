import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthDataSource {
  /// ログイン中のユーザー
  User? get user;

  /// Firebase ID
  String get firebaseId;

  /// Token
  Future<String> idToken();

  /// ログアウト
  Future<void> logout();
}
