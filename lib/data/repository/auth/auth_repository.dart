import 'package:fortune_client/data/model/base/app_user/app_user.dart';
import 'package:fortune_client/data/model/enum/auth_type.dart';

abstract class AuthRepository {
  /// 認証タイプ
  AuthType authType();

  /// ログイン情報を取得
  Future<AppUser?> getLoginResult();

  /// ログイン中かどうか
  bool get isLogin;

  /// Firebase ID
  String get firebaseId;

  /// Token
  Future<String> idToken();

  Future<AppUser?> login(AuthType type);

  /// ログアウト
  Future<void> logout();
}
