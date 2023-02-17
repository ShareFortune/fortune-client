import 'package:flutter/services.dart';
import 'package:fortune_client/data/datasource/remote/firebase/authentication_interface.dart';
import 'package:fortune_client/data/model/base/app_user/app_user.dart';
import 'package:fortune_client/data/model/enum/auth_type.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthentication implements AuthenticationInterface {
  static final instance = GoogleAuthentication._();
  GoogleAuthentication._();

  Future<GoogleLoginResult?> getLoginResult() async {
    try {
      final account = await GoogleSignIn().signIn();
      if (account == null) {
        return null;
      }

      final authentication = await account.authentication;

      return GoogleLoginResult(
        account: account,
        authentication: authentication,
      );
    } on PlatformException catch (e) {
      logger.e(e.toString());
      rethrow;
      // throw AppException.undefine(e.toString());
    }
  }

  @override
  Future<AppUser?> login() async {
    try {
      final GoogleSignInAccount? loginResult = await GoogleSignIn().signIn();
      if (loginResult == null) return null;

      final authentication = await loginResult.authentication;
      logger.i('authentication idToken : ${authentication.idToken}');

      return AppUser(
        type: AuthType.google,
        openId: loginResult.id,
        nickName: loginResult.displayName,
        email: loginResult.email,
        pictureUrl: loginResult.photoUrl,
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
