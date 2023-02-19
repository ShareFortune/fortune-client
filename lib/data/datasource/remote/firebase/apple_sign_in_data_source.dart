import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortune_client/data/datasource/remote/firebase/auth_method_interface.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AppleSignInDataSource implements AuthMethodInterface {
  @override
  Future<OAuthCredential?> login() async {
    if (await SignInWithApple.isAvailable()) {
      /// Appleサインインを利用できない
      /// その場合は他ログイン方法を利用するよう誘導する
      /// ダイアログを表示する。
      ///
      /// 使えない原因もちゃんと伝わるようにしたほうがいいかも
    }

    // AuthorizationCredentialAppleIDのインスタンスを取得
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );

    // OAthCredentialのインスタンスを作成
    OAuthProvider oauthProvider = OAuthProvider('apple.com');
    return oauthProvider.credential(
      idToken: appleCredential.identityToken,
      accessToken: appleCredential.authorizationCode,
    );

    /// Firebaseにサインイン
    // await FirebaseAuth.instance.signInWithCredential(credential);

    /// サインインユーザー情報の生成
    // return _generateAppUser(appleCredential);
  }

  // AppUser _generateAppUser(AuthorizationCredentialAppleID appleCredential) {
  //   final familyName = appleCredential.familyName ?? '';
  //   final givenName = appleCredential.givenName ?? '';

  //   return AppUser(
  //     type: AuthType.apple,
  //     openId: appleCredential.userIdentifier,
  //     nickName: familyName + givenName,
  //     email: appleCredential.email,
  //     idToken: appleCredential.identityToken,
  //   );
  // }

  @override
  logout() async {
    return;
  }
}
