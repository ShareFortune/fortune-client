import 'package:fortune_client/util/storage/app_pref_key.dart';

enum AuthType {
  facebook,
  apple,
  google,
}

extension AuthTypeEx on AuthType {
  String get providerName {
    switch (this) {
      case AuthType.facebook:
        return 'facebook';
      case AuthType.apple:
        return 'apple';
      case AuthType.google:
        return 'google';
    }
  }

  String get accessToken {
    switch (this) {
      case AuthType.apple:
        return AppPrefKey.accessTokenApple.keyString;
      case AuthType.google:
        return AppPrefKey.accessTokenGoogle.keyString;
      case AuthType.facebook:
        return AppPrefKey.accessTokenTwitter.keyString;
      default:
        return '';
    }
  }
}
