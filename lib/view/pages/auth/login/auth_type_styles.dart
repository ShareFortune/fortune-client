import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/enum/auth_type.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';

extension AuthTypeEx on AuthType {
  Color get color {
    switch (this) {
      case AuthType.apple:
        return Colors.black;
      case AuthType.google:
        return const Color(0xFFF8F8F8);
      case AuthType.facebook:
        return const Color(0xFF1B93E3);
    }
  }

  String get text {
    switch (this) {
      case AuthType.apple:
        return LocaleKeys.loginPage_login_apple.tr();
      case AuthType.google:
        return LocaleKeys.loginPage_login_google.tr();
      case AuthType.facebook:
        return LocaleKeys.loginPage_login_twitter.tr();
    }
  }

  Color get textColor {
    switch (this) {
      case AuthType.apple:
        return const Color(0xFFFEFEFE);
      case AuthType.google:
        return Colors.black;
      case AuthType.facebook:
        return const Color(0xFFFFFFFF);
    }
  }

  String get iconPath {
    switch (this) {
      case AuthType.apple:
        return Assets.images.icons.iconApple.path;
      case AuthType.google:
        return Assets.images.icons.iconGoogle.path;
      case AuthType.facebook:
        return Assets.images.icons.iconTwitter.path;
    }
  }
}
