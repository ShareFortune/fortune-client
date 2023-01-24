enum AppPrefKey {
  // DummyUseLoginAPi
  dummyLoginApi,

  /// 自動ログイン
  automaticLogin,

  /// Fortune ID
  fortuneId,

  /// プロフィール
  profile,
  profileId,
  username,
  name,
  mainImageURL,
  gender,
  stature,
  addressId,
  drinkFrequency,
  cigaretteFrequency,
  selfIntroduction,
  tags,

  /// プロフィール写真URL
  profileUrl,
}

extension AppPrefKeyEx on AppPrefKey {
  String get keyString {
    return name;
  }
}
