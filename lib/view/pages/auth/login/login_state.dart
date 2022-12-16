import 'package:flutter/material.dart';
import 'package:fortune_client/gen/assets.gen.dart';

enum AuthType {
  apple,
  google,
  twitter,
}

extension AuthTypeColor on AuthType {
  Color get color {
    switch (this) {
      case AuthType.apple:
        return Colors.black;
      case AuthType.google:
        return const Color(0xFFF8F8F8);
      case AuthType.twitter:
        return const Color(0xFF1B93E3);
    }
  }

  String get text {
    switch (this) {
      case AuthType.apple:
        return "Appleでログインする";
      case AuthType.google:
        return "Googleでログインする";
      case AuthType.twitter:
        return "Twitterでログインする";
    }
  }

  Color get textColor {
    switch (this) {
      case AuthType.apple:
        return const Color(0xFFFEFEFE);
      case AuthType.google:
        return Colors.black;
      case AuthType.twitter:
        return const Color(0xFFFFFFFF);
    }
  }

  String get iconPath {
    switch (this) {
      case AuthType.apple:
        return Assets.images.icons.iconApple.path;
      case AuthType.google:
        return Assets.images.icons.iconGoogle.path;
      case AuthType.twitter:
        return Assets.images.icons.iconTwitter.path;
    }
  }
}
