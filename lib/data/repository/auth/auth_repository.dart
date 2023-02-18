import 'package:fortune_client/data/model/base/app_user/app_user.dart';
import 'package:fortune_client/data/model/enum/auth_type.dart';

abstract class AuthRepository {
  /// ログイン中かどうか
  bool get isLogin;

  /// Firebase ID
  String get firebaseId;

  /// Token
  Future<String> idToken();

  /// Googleでサインイン
  Future<void> signInWithGoogle();

  /// Googleでサインイン
  Future<void> signInWithApple();

  /// Googleでサインイン
  Future<void> signInWithTwitter();

  Future<AppUser?> signIn(AuthType type);

  /// ログアウト
  Future<void> logout();
}
