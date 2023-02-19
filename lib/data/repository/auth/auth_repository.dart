import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortune_client/data/model/enum/auth_type.dart';

abstract class AuthRepository {
  /// 認証タイプ
  AuthType authType();

  /// ログイン中かどうか
  bool get isLogin;

  /// Firebase ID
  String get firebaseId;

  /// Token
  Future<String> idToken();

  Future<UserCredential?> login(AuthType type);

  /// ログアウト
  Future<void> logout();
}
