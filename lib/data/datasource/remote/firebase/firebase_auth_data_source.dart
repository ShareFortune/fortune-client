import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthDataSource {
  /// ログイン中かどうかを返す
  bool get isSignIn;

  /// Token取得
  Future<String> getToken();

  logout();
  update();
  Future<UserCredential?> sigInWithGoogle();
}
