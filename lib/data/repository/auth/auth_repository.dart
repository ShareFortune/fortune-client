abstract class AuthRepository {
  /// トークン取得
  Future<String> getAuthenticationToken();

  /// サインインしているか
  Future<bool> isSignIn();

  /// Googleでサインイン
  Future<bool> signInWithGoogle();

  /// ログアウト
  Future<bool> logout();
}
