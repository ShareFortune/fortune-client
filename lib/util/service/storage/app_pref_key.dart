enum AppPrefKey {
  // DummyUseLoginAPi
  dummyLoginApi,
}

extension AppPrefKeyEx on AppPrefKey {
  String get keyString {
    return name;
  }
}
