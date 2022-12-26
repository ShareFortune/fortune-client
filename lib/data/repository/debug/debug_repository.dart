abstract class DebugRepository {
  /// ダミーログインAPI
  Future<bool> getDummyRoginApi();

  /// ダミーログインAPI切り替え
  Future<void> setDummyRoginApi(bool value);

  /// 自動ログイン
  Future<bool> getAutomaticLogin();

  /// 自動ログイン切り替え
  Future<void> setAutomaticLogin(bool value);
}
