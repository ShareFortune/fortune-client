import 'package:flutter/material.dart';

class AppColors {
  AppColors({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.background,
    required this.onBackground,
    required this.textFieldBackground,
    required this.surface,
    required this.onSurface,
    required this.linkColor,
    required this.error,
    required this.onError,
    required this.subText1,
    required this.subText2,
    required this.subText3,
    required this.iconBtn1,
    required this.iconBtn2,
    required this.shadow,
    required this.border1,
    required this.border2,
    required this.disable,
  });

  factory AppColors.light() {
    return AppColors(
      primary: const Color(0xFFC782E4),
      onPrimary: const Color(0xFFFFFFFF),
      secondary: const Color(0xFF43C6B5),
      onSecondary: const Color(0xFF0078FE),
      background: const Color(0xFFF2F2F6),
      onBackground: const Color(0xFFFFFFFF),
      textFieldBackground: const Color(0xFFF2F8FC),
      surface: const Color(0xFFE5E5E5),
      onSurface: const Color(0xFFE5E5E5),
      linkColor: const Color(0xFF0078FE),
      error: const Color(0xFFB83231),
      onError: const Color(0xFFFFFFFF),
      subText1: const Color(0xFF000000),
      subText2: const Color(0xFF6C6C6C),
      subText3: const Color(0xFF969696),
      iconBtn1: const Color(0xFF000000),
      iconBtn2: const Color(0xFFD9D9D9),
      shadow: const Color(0xFFF3F3F3),
      border1: const Color(0xFFDDDDDD),
      border2: const Color(0xFFF3F3F3),
      disable: const Color(0xFFC9C9CB),
    );
  }

  factory AppColors.dark() {
    return AppColors(
      primary: const Color(0xFFEDCDC3),
      onPrimary: const Color(0xFFEDCDC3),
      secondary: const Color(0xFFA8CCC1),
      onSecondary: const Color(0xFFA8CCC1),
      background: const Color(0xFFFFFFFF),
      onBackground: const Color(0xFFFFFFFF),
      textFieldBackground: const Color(0xFFFFFFFF),
      surface: const Color(0xFFE5E5E5),
      onSurface: const Color(0xFFE5E5E5),
      linkColor: const Color(0xFF0078FE),
      error: const Color(0xFFB83231),
      onError: const Color(0xFFB83231),
      subText1: const Color(0xFF000000),
      subText2: const Color(0xFF6C6C6C),
      subText3: const Color(0xFF969696),
      iconBtn1: const Color(0xFF000000),
      iconBtn2: const Color(0xFFD9D9D9),
      shadow: const Color(0xFFF3F3F3),
      border1: const Color(0xFFF3F3F3),
      border2: const Color(0xFFF3F3F3),
      disable: const Color(0xFFC9C9CB),
    );
  }

  /// メインカラー
  final Color primary;
  final Color onPrimary;

  /// サブカラー
  final Color secondary;
  final Color onSecondary;

  /// 背景
  final Color background;
  final Color onBackground;
  final Color textFieldBackground;

  /// Cardなどのウィジェットの背景色
  final Color surface;
  final Color onSurface;

  /// リンク
  final Color linkColor;

  /// テキスト
  final Color subText1;
  final Color subText2;
  final Color subText3;

  /// エラー
  final Color error;
  final Color onError;

  /// アイコンボタンカラー
  final Color iconBtn1;
  final Color iconBtn2;

  /// 影
  final Color shadow;

  ///ボーダー
  final Color border1;
  final Color border2;

  /// 非活性
  final Color disable;
}
