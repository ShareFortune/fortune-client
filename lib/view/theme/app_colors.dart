import 'package:flutter/material.dart';

class AppColors {
  AppColors({
    required this.primary,
    required this.primaryVariant,
    required this.onPrimary,
    required this.secondary,
    required this.secondaryVariant,
    required this.onSecondary,
    required this.background,
    required this.onBackground,
    required this.background2,
    required this.onBackground2,
    required this.surface,
    required this.onSurface,
    required this.error,
    required this.onError,
    required this.subText1,
    required this.subText2,
    required this.subText3,
    required this.iconBtn,
    required this.iconBtnBg,
    required this.shadow,
    required this.border1,
    required this.border2,
    required this.disable,
  });

  factory AppColors.light() {
    return AppColors(
      primary: const Color(0xFFEDCDC3),
      primaryVariant: const Color(0xFFEDCDC3),
      onPrimary: const Color(0xFFEDCDC3),
      secondary: const Color(0xFF0078FE),
      secondaryVariant: const Color(0xFF0078FE),
      onSecondary: const Color(0xFF0078FE),
      background: const Color(0xFFFFFFFF),
      onBackground: const Color(0xFFFFFFFF),
      background2: const Color(0xFFF2F2F6),
      onBackground2: const Color(0xFFFFFFFF),
      surface: const Color(0xFFE5E5E5),
      onSurface: const Color(0xFFE5E5E5),
      error: const Color(0xFFB83231),
      onError: const Color(0xFFB83231),
      subText1: const Color(0xFF000000),
      subText2: const Color(0xFF6C6C6C),
      subText3: const Color(0xFF969696),
      iconBtn: const Color(0xFF000000),
      iconBtnBg: const Color(0xFFF2F2F6),
      shadow: const Color(0xFFF3F3F3),
      border1: const Color(0xFFF3F3F3),
      border2: const Color(0xFFF3F3F3),
      disable: const Color(0xFFC9C9CB),
    );
  }

  factory AppColors.dark() {
    return AppColors(
      primary: const Color(0xFFEDCDC3),
      primaryVariant: const Color(0xFFEDCDC3),
      onPrimary: const Color(0xFFEDCDC3),
      secondary: const Color(0xFFA8CCC1),
      secondaryVariant: const Color(0xFFA8CCC1),
      onSecondary: const Color(0xFFA8CCC1),
      background: const Color(0xFFFFFFFF),
      onBackground: const Color(0xFFFFFFFF),
      background2: const Color(0xFFFFFFFF),
      onBackground2: const Color(0xFFFFFFFF),
      surface: const Color(0xFFE5E5E5),
      onSurface: const Color(0xFFE5E5E5),
      error: const Color(0xFFB83231),
      onError: const Color(0xFFB83231),
      subText1: const Color(0xFF000000),
      subText2: const Color(0xFF6C6C6C),
      subText3: const Color(0xFF969696),
      iconBtn: const Color(0xFF000000),
      iconBtnBg: const Color(0xFFF2F2F6),
      shadow: const Color(0xFFF3F3F3),
      border1: const Color(0xFFF3F3F3),
      border2: const Color(0xFFF3F3F3),
      disable: const Color(0xFFC9C9CB),
    );
  }

  /// メインカラー
  final Color primary;
  final Color primaryVariant;
  final Color onPrimary;

  /// サブカラー
  final Color secondary;
  final Color secondaryVariant;
  final Color onSecondary;

  /// 背景
  final Color background;
  final Color onBackground;
  final Color background2;
  final Color onBackground2;

  /// Cardなどのウィジェットの背景色
  final Color surface;
  final Color onSurface;

  /// エラー
  final Color error;
  final Color onError;

  /// テキスト
  final Color subText1;
  final Color subText2;
  final Color subText3;

  /// アイコンボタンカラー
  final Color iconBtn;
  final Color iconBtnBg;

  /// 影
  final Color shadow;

  ///ボーダー
  final Color border1;
  final Color border2;

  /// 非活性
  final Color disable;
}
