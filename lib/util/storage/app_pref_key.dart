enum AppPrefKey {
  // DummyUseLoginAPi
  dummyLoginApi,

  /// 自動ログイン
  automaticLogin,

  /// AccessToken
  accessTokenApple,
  accessTokenGoogle,
  accessTokenTwitter,

  /// Fortune ID
  fortuneId,

  /// プロフィールID
  profileId,

  /// プロフィール
  profile,

  /// プロフィール写真
  profileImage,
  profileMainImage,
  profileSecondImage,
  profileThirdImage,
  profileFourthImage,
  profileFifthImage,
  profileSixthImage,
}

extension AppPrefKeyEx on AppPrefKey {
  String get keyString {
    return name;
  }
}
