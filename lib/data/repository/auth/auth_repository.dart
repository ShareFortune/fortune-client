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

  /// ログアウト
  Future<void> logout();

  /// テスト用機能
  ///
  /// 自動ログイン
  ///

}
