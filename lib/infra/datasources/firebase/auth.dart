import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class FirebaseAuthDataSource {
  Future<UserCredential?> sigInWithGoogle();
  logout();
  update();

  bool get isSignIn;
  User? get firebaseUser;
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
    } on PlatformException catch (e) {
      debugPrint('PlatformException: $e');
    } on FirebaseAuthException catch (e) {
      debugPrint('FirebaseAuthException: $e');
    }
    return response;
  }

  // @override
  // Future<void> signInWithGoogle() async {
  //   final GoogleSignInAccount? googleSignInAccount =
  //       await GoogleSignIn().signIn();
  //   final GoogleSignInAuthentication googleSignInAuthentication =
  //       await googleSignInAccount!.authentication;

  //   final AuthCredential credential = GoogleAuthProvider.credential(
  //     accessToken: googleSignInAuthentication.accessToken,
  //     idToken: googleSignInAuthentication.idToken,
  //   );
  //   await FirebaseAuth.instance.signInWithCredential(credential);
  // }

  @override
  logout() {}

  @override
  update() {
    // TODO: implement update
    throw UnimplementedError();
  }
}
