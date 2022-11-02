import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class FirebaseAuthDataSource {
  bool get isSignIn;
  User? get firebaseUser;

  logout();
  update();
  Future<UserCredential?> sigInWithGoogle();
}

class FirebaseAuthDataSourceImpl implements FirebaseAuthDataSource {
  FirebaseAuthDataSourceImpl({
    required this.googleSignIn,
    required this.firebaseAuth,
  });

  final GoogleSignIn googleSignIn;
  final FirebaseAuth firebaseAuth;

  final _auth = FirebaseAuth.instance;

  /// ログイン中Firebaseユーザを返す
  @override
  User? get firebaseUser => _auth.currentUser;

  /// ログイン中かどうかを返す
  @override
  bool get isSignIn => _auth.currentUser != null;

  @override
  Future<UserCredential?> sigInWithGoogle() async {
    UserCredential? response;

    try {
      final googleUser = await googleSignIn.signIn();
      final googleAuth = await googleUser?.authentication;

      if (googleAuth != null) {
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        response = await firebaseAuth.signInWithCredential(credential);
      }
    } catch (e) {
      rethrow;
    }

    return response;
  }

  @override
  logout() {}

  @override
  update() {}
}
