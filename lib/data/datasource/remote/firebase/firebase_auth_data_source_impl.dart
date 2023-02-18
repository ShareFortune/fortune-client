import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthDataSourceImpl implements FirebaseAuthDataSource {
  FirebaseAuthDataSourceImpl();

  final _auth = FirebaseAuth.instance;

  @override
  User? get user => _auth.currentUser;

  @override
  Future<void> sigInWithGoogle() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      final googleAuth = await googleUser?.authentication;

      if (googleAuth != null) {
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        await _auth.signInWithCredential(credential);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  logout() {}

  @override
  update() {}
}
