import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthDataSource {
  bool get isSignIn;
  User? get firebaseUser;

  logout();
  update();
  Future<UserCredential?> sigInWithGoogle();
}
