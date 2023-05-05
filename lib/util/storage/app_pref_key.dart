enum AppPrefKey {
  // DummyUseLoginAPi
  dummyLoginApi,

  /// 自動ログイン
  automaticLogin,

  /// AccessToken
  accessTokenApple,
  accessTokenGoogle,
  accessTokenTwitter,

  /// 認証タイプ
  authType,

  /// Fortune ID
  fortuneId,

  /// プロフィールID
  profileId,

  /// プロフィール
  profile,

  /// プロフィール写真
  profileImages,

  /// Next Token
  roomsNextToken,
}

extension AppPrefKeyEx on AppPrefKey {
  String get keyString {
    return name;
  }
}
