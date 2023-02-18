import 'package:fortune_client/data/model/base/app_user/app_user.dart';

abstract class AuthMethodInterface {
  /// ログイン結果を取得
  Future<AppUser?> getLoginResult();

  /// ログイン
  Future<AppUser?> login();

  /// ログアウト
  Future<void> logout();
}
