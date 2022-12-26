enum AppPrefKey {
  // DummyUseLoginAPi
  dummyLoginApi,

  /// 自動ログイン
  automaticLogin,
}

extension AppPrefKeyEx on AppPrefKey {
  String get keyString {
    return name;
  }
}
