enum AppPrefKey {
  // DummyUseLoginAPi
  dummyLoginApi,

  /// 自動ログイン
  automaticLogin,

  /// プロフィール作成
  isProfile,
}

extension AppPrefKeyEx on AppPrefKey {
  String get keyString {
    return name;
  }
}
