import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_color.dart';

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
    required this.surface,
    required this.onSurface,
    required this.error,
    required this.onError,
    required this.divider,
    required this.headline1,
    required this.iconBtn,
    required this.iconBtnBg,
    required this.navigationBarText,
    required this.navigationBarIcon,
    required this.navigationBarSelectedIcon,
    required this.navigationBarUnSelectedIcon,
    required this.tabIndicator,
    required this.shadow,
    required this.offState,
    required this.textFieldBorderSide,
    required this.explanation,
    required this.messageSendingInputFormBg,
    required this.mainTextColor,
    required this.subText1,
    required this.subText2,
    required this.subText3,
    required this.subText4,
    required this.subText5,
    required this.subText6,
  });

  factory AppColors.light({
    Color? mainTextColor,
    Color? textColor1,
    Color? textColor2,
    Color? textColor3,
    Color? textColor4,
    Color? textColor5,
    Color? textColor6,
  }) {
    return AppColors(
      primary: Color.fromRGBO(199, 130, 228, 1),
      primaryVariant: Color(0xFF3700B3),
      onPrimary: Color(0xFFFFFFFF),
      secondary: Color(0xFF43C6B5),
      secondaryVariant: Color(0xFF018786),
      onSecondary: Color(0xFF000000),
      // background: Color.fromARGB(255, 255, 250, 255),
      background: Colors.white,
      onBackground: Color(0xFF000000),
      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF000000),
      error: Color(0xFFB00020),
      onError: Color(0xFFFFFFFF),
      divider: Color.fromRGBO(0, 0, 0, 0.1),
      headline1: Color.fromRGBO(0, 0, 0, 1),
      iconBtn: Color.fromRGBO(0, 0, 0, 0.6),
      iconBtnBg: Color(0xFFFFFFFF),
      navigationBarText: Color(0xFFFFFFFF),
      navigationBarIcon: Color.fromRGBO(0, 0, 0, 1),
      navigationBarSelectedIcon: Color.fromRGBO(0, 0, 0, 1),
      navigationBarUnSelectedIcon: Color.fromRGBO(0, 0, 0, 0.5),
      tabIndicator: Color.fromRGBO(0, 0, 0, 1),
      shadow: Color.fromRGBO(0, 0, 0, 0.05),
      offState: Color.fromRGBO(0, 0, 0, 0.15),
      textFieldBorderSide: Color.fromRGBO(0, 0, 0, 0.3),
      explanation: Color.fromRGBO(0, 0, 0, 0.3),
      messageSendingInputFormBg: Color(0xfff5f5f7),
      mainTextColor: mainTextColor ?? AppColor.black,
      subText1: textColor1 ?? AppColor.lightTextGrey1,
      subText2: textColor2 ?? AppColor.lightTextGrey2,
      subText3: textColor3 ?? AppColor.grayFA,
      subText4: textColor4 ?? AppColor.black,
      subText5: textColor5 ?? AppColor.red,
      subText6: textColor6 ?? AppColor.grey98,
    );
  }

  factory AppColors.dark({
    Color? mainTextColor,
    Color? textColor1,
    Color? textColor2,
    Color? textColor3,
    Color? textColor4,
    Color? textColor5,
    Color? textColor6,
  }) {
    return AppColors(
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
      navigationBarText: Color(0xFFFFFFFF),
      navigationBarIcon: Color(0xFFFFFFFF),
      navigationBarSelectedIcon: Color(0xFFFFFFFF),
      navigationBarUnSelectedIcon: Color(0xFFFFFFFF),
      tabIndicator: Color.fromRGBO(0, 0, 0, 0.5),
      shadow: Color.fromRGBO(0, 0, 0, 0.5),
      offState: Color.fromRGBO(0, 0, 0, 0.5),
      textFieldBorderSide: Color.fromRGBO(0, 0, 0, 0.5),
      explanation: Color.fromRGBO(0, 0, 0, 0.5),
      messageSendingInputFormBg: Color.fromRGBO(0, 0, 0, 0.5),
      mainTextColor: mainTextColor ?? AppColor.white,
      subText1: textColor1 ?? AppColor.darkTextGrey1,
      subText2: textColor2 ?? AppColor.darkTextGrey2,
      subText3: textColor3 ?? AppColor.grayFA,
      subText4: textColor4 ?? AppColor.darkTextGrey2,
      subText5: textColor5 ?? AppColor.darkTextRed,
      subText6: textColor6 ?? AppColor.darkDisable,
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

  /// ボトムナビゲーション
  final Color navigationBarText;
  final Color navigationBarIcon;
  final Color navigationBarSelectedIcon;
  final Color navigationBarUnSelectedIcon;

  /// タブバー
  final Color tabIndicator;

  /// 影
  final Color shadow;

  /// ボタンカラー
  final Color offState;

  /// インプットフィールド
  final Color textFieldBorderSide;

  final Color explanation;

  /// メッセージ入力フォームの背景
  final Color messageSendingInputFormBg;

  final Color mainTextColor;
  final Color subText1;
  final Color subText2;
  final Color subText3;
  final Color subText4;
  final Color subText5;
  final Color subText6;
}
