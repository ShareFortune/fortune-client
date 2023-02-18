import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthDataSource {
  /// ログイン中のユーザー
  User? get user;

  logout();
  update();
  Future<void> sigInWithGoogle();
}
