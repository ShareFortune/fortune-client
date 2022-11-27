import 'package:flutter/material.dart';

class AppColors {
  const AppColors({
    required this.primary,
    required this.primaryVariant,
    required this.onPrimary,
    required this.secondary,
    required this.secondaryVariant,
    required this.onSecondary,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.error,
    required this.onError,
    required this.divider,
    required this.headline1,
    required this.iconBtn,
    required this.iconBtnBg,
  });

  factory AppColors.light() {
    return const AppColors(
      primary: Color.fromRGBO(199, 130, 228, 1),
      primaryVariant: Color(0xFF3700B3),
      onPrimary: Color(0xFFFFFFFF),
      secondary: Color(0xFF03DAC6),
      secondaryVariant: Color(0xFF018786),
      onSecondary: Color(0xFF000000),
      background: Color.fromARGB(255, 255, 250, 255),
      onBackground: Color(0xFF000000),
      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF000000),
      error: Color(0xFFB00020),
      onError: Color(0xFFFFFFFF),
      divider: Color.fromRGBO(0, 0, 0, 0.1),
      headline1: Color.fromRGBO(0, 0, 0, 1),
      iconBtn: Color.fromRGBO(0, 0, 0, 1),
      iconBtnBg: Color(0xFFFFFFFF),
    );
  }

  factory AppColors.dark() {
    return const AppColors(
      primary: Color(0xFF6200EE),
      primaryVariant: Color(0xFF3700B3),
      onPrimary: Color(0xFFFFFFFF),
      secondary: Color(0xFF03DAC6),
      secondaryVariant: Color(0xFF018786),
      onSecondary: Color(0xFF000000),
      background: Color(0xFFFFFFFF),
      onBackground: Color(0xFF000000),
      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF000000),
      error: Color(0xFFB00020),
      onError: Color(0xFFFFFFFF),
      divider: Color(0xFFFFFFFF),
      headline1: Color.fromRGBO(0, 0, 0, 0),
      iconBtn: Color.fromRGBO(0, 0, 0, 1),
      iconBtnBg: Color(0xFFFFFFFF),
    );
  }

  final Color primary;
  final Color primaryVariant;
  final Color onPrimary;
  final Color secondary;
  final Color secondaryVariant;
  final Color onSecondary;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color error;
  final Color onError;
  final Color divider;
  final Color headline1;

  /// アイコンボタンカラー
  final Color iconBtn;
  final Color iconBtnBg;
}
