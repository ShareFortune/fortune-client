import 'package:flutter/material.dart';
import 'package:fortune_client/gen/assets.gen.dart';

class LoginState {}

enum AuthType {
  line,
  apple,
  google,
}

extension AuthTypeColor on AuthType {
  Color get color {
    switch (this) {
      case AuthType.apple:
        return Colors.black;
      case AuthType.google:
        return const Color(0xFFF8F8F8);
      case AuthType.line:
        return const Color(0xFF06C755);
    }
  }

  String get text {
    switch (this) {
      case AuthType.apple:
        return "Appleでログインする";
      case AuthType.google:
        return "Googleでログインする";
      case AuthType.line:
        return "Lineでログインする";
    }
  }

  Color get textColor {
    switch (this) {
      case AuthType.apple:
        return const Color(0xFFFEFEFE);
      case AuthType.google:
        return Colors.black;
      case AuthType.line:
        return const Color(0xFFFFFFFF);
    }
  }

  String get iconPath {
    switch (this) {
      case AuthType.apple:
        return Assets.images.icons.iconApple.path;
      case AuthType.google:
        return Assets.images.icons.iconGoogleSet.path;
      case AuthType.line:
        return Assets.images.icons.iconLine.path;
    }
  }
}
