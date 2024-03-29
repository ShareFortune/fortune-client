abstract class DebugRepository {
  /// ダミーログインAPI
  Future<bool> getDummyRoginApi();

  /// ダミーログインAPI切り替え
  Future<bool> setDummyRoginApi(bool value);

  /// 自動ログイン
  Future<bool> getAutomaticLogin();

  /// 自動ログイン切り替え
  Future<bool> setAutomaticLogin(bool value);

  /// プロフィール作成フラグをクリアする
  Future<bool> clearIsProfile();
}
