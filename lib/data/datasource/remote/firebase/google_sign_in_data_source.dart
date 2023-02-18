import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:fortune_client/data/datasource/remote/firebase/auth_method_interface.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';
import 'package:fortune_client/data/model/base/app_user/app_user.dart';
import 'package:fortune_client/data/model/enum/auth_type.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInDataSource implements AuthMethodInterface {
  @override
  Future<AppUser?> getLoginResult() async {
    try {
      final account = await GoogleSignIn().signIn();
      if (account == null) return null;

      /// ログイン結果
      final googleLoginResult = GoogleLoginResult(
        account: account,
        authentication: await account.authentication,
      );

      /// サインインユーザー情報の生成
      return _generateAppUser(
        googleLoginResult.account,
        googleLoginResult.authentication,
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
      /// Googleにサインイン
      final GoogleSignInAccount? loginResult = await GoogleSignIn().signIn();

      /// SignInできなかったらnullを返す
      if (loginResult == null) return null;

      /// Credentialの生成
      final authentication = await loginResult.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: authentication.accessToken,
        idToken: authentication.idToken,
      );

      /// Firebaseにサインイン
      await FirebaseAuth.instance.signInWithCredential(credential);

      /// サインインユーザー情報の生成
      return _generateAppUser(
        loginResult,
        authentication,
      );
    } on PlatformException catch (e) {
      logger.e(e.toString());
      rethrow;
    }
  }

  AppUser _generateAppUser(
    GoogleSignInAccount loginResult,
    GoogleSignInAuthentication authentication,
  ) {
    return AppUser(
      type: AuthType.google,
      openId: loginResult.id,
      nickName: loginResult.displayName,
      email: loginResult.email,
      pictureUrl: loginResult.photoUrl,
      idToken: authentication.idToken,
    );
  }

  @override
  Future<void> logout() async {
    try {
      final googleSignIn = GoogleSignIn();
      if (await googleSignIn.isSignedIn()) {
        await googleSignIn.disconnect();
        await getIt<FirebaseAuthDataSource>().logout();
        logger.i("ログアウトしました。");
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
