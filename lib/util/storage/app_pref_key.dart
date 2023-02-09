enum AppPrefKey {
  // DummyUseLoginAPi
  dummyLoginApi,

  /// 自動ログイン
  automaticLogin,

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

  /// 写真選択
  isShowPhotoOSDialogValue,

  /// カメラ
  isShowCameraOSDialogValue,
}

extension AppPrefKeyEx on AppPrefKey {
  String get keyString {
    return name;
  }
}
