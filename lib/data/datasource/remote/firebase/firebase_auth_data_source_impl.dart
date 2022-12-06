import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'firebase_auth_data_source.dart';

class FirebaseAuthDataSourceImpl implements FirebaseAuthDataSource {
  FirebaseAuthDataSourceImpl();

  final _auth = FirebaseAuth.instance;

  @override
  User? get firebaseUser => _auth.currentUser;

  // @override
  // bool get isSignIn => _auth.currentUser != null;

  // @override
  // Future<String> getToken() async => await _firebaseUser!.getIdToken();

  @override
  Future<UserCredential?> sigInWithGoogle() async {
    UserCredential? response;

    try {
      final googleUser = await GoogleSignIn().signIn();
      final googleAuth = await googleUser?.authentication;

      if (googleAuth != null) {
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        response = await _auth.signInWithCredential(credential);
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
