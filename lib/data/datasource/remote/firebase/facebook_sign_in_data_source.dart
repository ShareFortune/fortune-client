import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fortune_client/data/datasource/remote/firebase/auth_method_interface.dart';

import 'package:fortune_client/util/logger/logger.dart';

class FacebookSignInDataSource implements AuthMethodInterface {
  final facebookAuth = FacebookAuth.instance;

  @override
  Future<OAuthCredential?> login() async {
    try {
      final loginResult = await facebookAuth.login();

      if (loginResult.accessToken == null) {
        return null;
      }

      return FacebookAuthProvider.credential(
        loginResult.accessToken!.token,
      );
    } on Exception catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    await facebookAuth.logOut();
  }
}
