import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:fortune_client/data/datasource/remote/firebase/auth_method_interface.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInDataSource implements AuthMethodInterface {
  @override
  Future<OAuthCredential?> login() async {
    try {
      /// Googleにサインイン
      final GoogleSignInAccount? loginResult = await GoogleSignIn().signIn();

      /// SignInできなかったらnullを返す
      if (loginResult == null) return null;

      /// Credentialの生成
      final authentication = await loginResult.authentication;
      return GoogleAuthProvider.credential(
        accessToken: authentication.accessToken,
        idToken: authentication.idToken,
      );
    } on PlatformException catch (e) {
      logger.e(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      final googleSignIn = GoogleSignIn();
      if (await googleSignIn.isSignedIn()) {
        await googleSignIn.disconnect();
      }
    } on PlatformException catch (e) {
      logger.e(e.toString());
      rethrow;
    }
  }
}

class GoogleLoginResult {
  GoogleLoginResult({
    required this.account,
    required this.authentication,
  });

  final GoogleSignInAccount account;
  final GoogleSignInAuthentication authentication;
}
