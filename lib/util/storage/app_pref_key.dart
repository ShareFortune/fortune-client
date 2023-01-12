enum AppPrefKey {
  // DummyUseLoginAPi
  dummyLoginApi,

  /// 自動ログイン
  automaticLogin,

  /// Fortune ID
  fortuneId,

  /// プロフィールID
  profileId,
}

extension AppPrefKeyEx on AppPrefKey {
  String get keyString {
    return name;
  }
}
