import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthDataSource {
  // /// Token取得
  // Future<String> getToken();

  /// ログイン中Firebaseユーザを返す
  User? get firebaseUser;

  logout();
  update();
  Future<UserCredential?> sigInWithGoogle();
}
