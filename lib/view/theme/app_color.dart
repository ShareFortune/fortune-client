import 'package:flutter/material.dart';

class AppColor {
  // メインカラー
  static const Color primaryColor = Color(0xFF13A5ED);
  static const Color primaryColorDark = Color(0xFF43B5ED);
  static const Color secondaryColor = Color(0xFFA9D9F7);
  static const Color lightPrimaryColor = Color(0xFFEDF7FD);

  static const Color darkPrimaryColor = Color(0xFF13A5ED);
  static const Color darkPrimaryColor2 = Color(0xFF43B5ED);

  // Base Text Color(Light Mode)
  static const Color black = Color(0xFF313131);

  // Base Text Color(Dark Mode)
  static const Color white = Color(0xFFFEFEFE);

  // Middle Text Color
  static const Color lightTextGrey2 = Color(0xFF5C5C5C);
  static const Color darkTextGrey2 = Color(0xFFA0A7BB);
  static const Color darkTextGrey3 = Color(0xFFD2D5E0);

  // Light Text Color
  static const Color lightTextGrey1 = Color(0xFF989898);
  static const Color darkTextGrey1 = Color(0xFF616679);

  // Red
  static const Color red = Color(0xFFF8587A);
  static const Color darkTextRed = Color(0xFFFC6B89);

  // Yellow
  static const Color yellow = Color(0xFFFED939);

  // Gray Scale (Light Mode)
  static const Color greyCC = Color(0xFFCCCCCC);
  static const Color grayE2 = Color(0xFFE2E2E2);
  static const Color grayF2 = Color(0xFFF2F2F2);
  static const Color grayFA = Color(0xFFFAFAFA);

  // Gray Scale (Dark Mode)
  static const Color darkGrey1 = Color(0xFF14172F);
  static const Color darkGrey2 = Color(0xFF1B1C34);
  static const Color darkGrey3 = Color(0xFF252946);
  static const Color darkGrey4 = Color(0xFFD3D5DF);

  static const Color grey70 = Color(0xFF707070);
  static const Color grey90 = Color(0xFF909090);
  static const Color grey98 = Color(0xFF989898);
  static const Color greyD5 = Color(0xFFD5D5D5);
  static const Color grayDD = Color(0xFFDDDDDD);
  static const Color grayE6 = Color(0xFFE6E6E6);
  static const Color grayF5 = Color(0xFFF5F5F5);
  static const Color grayF8 = Color(0xFFF8F8F8);

  // plus Color
  static const Color lightPlusColor = red;
  static const Color darkPlusColor = Color(0xFFFC6B89);

  // minus Color
  static const Color lightMinusColor = Color(0xFF13A5ED);
  static const Color darkMinusColor = Color(0xFF43B5ED);

  // flat Color
  static const Color lightflatColor = Color(0xFFCCCCCC);
  static const Color darkflatColor = Color(0xFFA0A7BB);

  // BackGround Color
  static const Color lightBG = Color(0xFFFFFFFF);
  static const Color darkBG = darkGrey1;

  // Disable Grey
  static const Color lightDisable = greyCC;
  static const Color darkDisable = Color(0xFF616679);

  static const Color darkIconDisable = Color(0xFF15172D);

  // TextField
  static const Color lightTextFieldBg = Color(0xFFF2F8FC);
  static const Color darkTextFieldBg = darkGrey3;

  // disable Indicator
  static const Color lightDisableIndicator = grayE2;
  static const Color darkDisableIndicator = darkGrey3;

  // Toast
  static const Color lightToast = Color(0xFFE2E2E2);
  static const Color darkToast = Color(0xFF252946);

  // Error Snack Bar
  static const Color lightErrorSnackBar = Color.fromRGBO(248, 88, 122, 0.3);
  static Color darkErrorSnackBar = const Color(0xFFFDB4C4).withOpacity(0.5);

  // Snack Bar
  static Color lightSnackBar = const Color(0xFFA9D9F7).withOpacity(0.9);
  static Color darkSnackBar = const Color(0xFF43B5ED).withOpacity(0.5);

  // ボタン
  static const Color lightBtnColor = grayFA;
  static const Color darkBtnColor = Color(0xFF252946);
  static const Color darkBtnColor2 = Color(0xFFA2A7B9);
  static const Color lightQuestionBtnColor = Color(0xFFEDF7FD);

  // ボタンテキスト
  static const Color lightBtnText = Color(0xFF5C5C5C);
  static const Color darkBtnText = Color(0xFFFEFEFE);

  // SNS ボタン :
  static const Color lineBtnColor = Color(0xFF06C755);
  static const Color googleBtnColor = AppColor.grayF8;

  // SNS アイコン :
  static const Color googleIconColor = AppColor.black;
  static const Color lineIconColor = Colors.white;
  static const Color appleBtnBG = Colors.black;

  // 枠
  static const Color lightBorderColor = Color(0xFFA1A7B9);
  static const Color darkBorderColor = AppColor.greyCC;

  // ダイアログ
  static const Color lightDialogBg = AppColor.white;
  static const Color darkDialogBg = Color(0xFF252946);

  // 影
  static const Color darkShadowColor = Color(0xFF000000);

  // チャート
  static const Color lightLineButtonBgColor = lightPrimaryColor;
  static const Color darkLineButtonBgColor = Color(0x6643B5ED);

  static const Color lightLineButtonColor = Color(0xFF51A3E7);
  static const Color darkLineButtonColor = Color(0xFF68B3E8);

  static const Color lightVolumeButtonColor = Color(0xFF1EA5ED);
  static const Color darkVolumeButtonColor = Color(0xFF43B5ED);

  static const Color lightLineChartColor = Color(0xFF5CA5F8);
  static const Color darkLineChartColor = Color(0xFF68B3E8);

  // リスト
  static const Color darkDragColor = Color(0xFF1D2645);

  // バナー
  static const Color bannerColor = Color(0xFF005B9D);

  //　グラフ
  static const Color graphBlueColor = Color(0xFF43B5ED);
  static const Color graphRedColor = Color(0xFFFC6B89);
  static const Color graphGreenColor = Color(0xFF00D6AB);
  static const Color graphYellowColor = Color(0xFFFED939);
  static const Color graphDarkColor = Color(0xFF101327);

  // 保有銘柄一覧ボタン
  static const Color ownedBrandButtonColor = Color(0xFFF2F8FC);

  // 解除ボタン
  static const Color deleteMailBtnColor = Color(0xFFF8587A);
  static const Color deleteMailBtnColorDark = Color(0xFFFC6B89);

  // コーチ
  static Color coachCliperColor = const Color(0xF0000000).withOpacity(0.3);
  static const Color lightAvatarColor = Color(0xFFF5F5F5);
  static const Color darkAvatarColor = Color(0xFFA0A7BB);

  static Color coachBgColor = const Color(0xFF000000).withOpacity(0.7);
  static Color coachBgColorDark = const Color(0xFF101327).withOpacity(0.7);

  /// 騰落配色設定/ローソクチャートの赤色 & 登録銘柄株価ボードの背景色
  static const Color chartRedColor = Color(0xFFF8587A);
  static const Color redBgColor = Color(0xFFFCF2F5);

  /// 騰落配色設定/ローソクチャートの赤色(ダークモード) & 登録銘柄株価ボードの背景色
  static const Color chartRedColorDark = Color(0xFFFC6B89);
  static const Color redBgColorDark = Color(0xFF492A44);

  /// 騰落配色設定/ローソクチャートの青色 & 登録銘柄株価ボードの背景色
  static const Color chartBlueColor = Color(0xFF13A5ED);
  static const Color blueBgColor = Color(0xFFEDF7FC);

  /// 騰落配色設定/ローソクチャートの青色(ダークモード) & 登録銘柄株価ボードの背景色
  static const Color chartBlueColorDark = Color(0xFF43B5ED);
  static const Color blueBgColorDark = Color(0xFF1B304D);

  static const Color buttonBorderColorDark = Color(0xFF1B1C32);
  static const Color buttonBorderColor = Color(0xFFF2F2F2);

  static const Color disabledCardBackground = Color(0xFFF9F9F9);
  static const Color disabledCardBackgroundDark = Color(0xFF1B1C34);

  static const Color tabbarBackgroundColor = Color(0xFFFFFFFF);
  static const Color tabbarBackgroundColorDark = Color(0xFF1B1C34);
  static final Color tabbarShadowColor = const Color(0xFF000000).withOpacity(0.06);

  static const Color tabbarSelectedTextColor = Color(0xFF1EA5ED);
  static const Color tabbarSelectedTextColorDark = Color(0xFF13A5ED);
  static const Color tabbarUnselectedTextColor = Color(0xFFC4C4C4);
  static const Color tabbarUnselectedTextColorDark = Color(0xFF616679);

  static const Color rotateIconShadowColor = Color(0x5353532B);
  static const Color rotateIconShadowColorDark = Color(0x0000005A);
  static const Color cardBg = Color(0xFFF2F8FC);
  static const Color cardBgDark = Color(0xFF252946);

  static const Color stockIconShadowColor = Color.fromRGBO(0, 0, 0, 0.08);

  static const Color buyButton = Color(0xFFF8587A);
  static const Color buyButtonDark = Color(0xFFFC6B89);

  static const Color sellButton = Color(0xFF01C9A2);
  static const Color sellButtonDark = Color(0xFF00D6AB);

  static const Color fingerWidgetTextColor = Color(0xFFFAFAFA);
  static const Color fingerWidgetTextColorDark = Color(0xFFFEFEFE);

  static const Color modalBackground = Color(0xFFFFFFFF);
  static const Color modalBackgroundDark = Color(0xFF1B1C34);

  static const Color orderDividerColor = Color(0xFFEFEFEF);
  static const Color orderDividerColorDark = Color(0xFF2D2D41);

  static const Color orderNoticeBackgroundColor = Color(0xFFF3F8FC);
  static const Color orderNoticeBackgroundColorDark = Color(0xFF252946);

  static const Color unselectedOutlineColor = Color(0xFFB4D8F4);
  static const Color unselectedOutlineColorDark = Color(0xFF31628A);

  static const Color orderValueRowBackground = Color(0xFFF2F2F2);
  static const Color orderValueRowBackgroundDark = Color(0xFF2D2D43);

  static const Color orderSuccessCardShadow = Color.fromRGBO(0, 0, 0, 0.16);
  static const Color onboardingTutorialShadow = Color.fromRGBO(0, 0, 0, 0.16);

  static const Color onboardingInputPlaceholderColor = Color(0xFFB4B4B4);
  static const Color onboardingInputPlaceholderColorDark = Color(0xFF616679);

  static const Color newsTitleLight = Color(0xFF5C5C5C);
  static const Color newsTitleDark = Color(0xFFD2D5E0);

  static const Color holdingStockCodeLight = Color(0xFFCCCCCC);
  static const Color holdingStockCodeDark = Color(0xFFA0A7BB);

  static const Color brandDetailColorLight = Color(0xFFEDF7FD);
  static const Color brandDetailColorDark = Color(0xFF252946);

  static const Color comparisonTableColor = Color(0xFF1E2139);

  static const Color correctionDividerDarkColor = Color(0xFF262944);

  static const Color keyboardTextColor = Color(0xFF1EA5ED);
  static const Color keyboardTextColorDark = Color(0xFFFEFEFE);

  static const Color keyboardBgColor = Color(0xFFE2E2E2);
  static const Color keyboardBgColorDark = Color(0xFF1B1C34);

  static const Color keyboardBtnBgColor = Color(0xFFFEFEFE);
  static const Color keyboardBtnBgColorDark = Color(0xFFA0A7BB);

  static const Color keyboardOkBtnBgColor = Color(0xFF31628A);
  static const Color keyboardOkBtnBgColorDark = Color(0xFF2A5579);

  static const Color keyboardNumTapBgColor = Color(0xFFCCCCCC);
  static const Color keyboardNumTapBgColorDark = Color(0xFF646C83);

  static const Color keyboardNumTapTextColor = Color(0xFF31628A);
  static const Color keyboardNumTapTextColorDark = Color(0xFFBEBBBB);
  static const Color keyboardNumInactTextColor = Color(0xFFE2E2E2);
  static const Color keyboardNumInactTextColorDark = Color(0xFFD2D5E0);

  static const Color keyboardFuncTapBgColor = Color(0xFF2D8CBA);
  static const Color keyboardFuncTapBgColorDark = Color(0xFF3790BC);
  static const Color keyboardFuncInactBgColor = Color(0xFFCCCCCC);
  static const Color keyboardFuncInactBgColorDark = Color(0xFF616679);

  static const Color keyboardFuncTapTextColor = Color(0xFFD2D5E0);
  static const Color keyboardFuncTapTextColorDark = Color(0xFFBEBBBB);
  static const Color keyboardFuncInactTextColor = Color(0xFFE2E2E2);
  static const Color keyboardFuncInactTextColorDark = Color(0xFFA0A7BB);

  static const Color keyboardOkTapBgColor = Color(0xFF254864);
  static const Color keyboardOkTapBgColorDark = Color(0xFF213D55);
  static const Color keyboardOkTapTextColor = Color(0xFF989898);
  static const Color keyboardOkTapTextColorDark = Color(0xFFBEBBBB);

  static const Color dividerDarkColor = Color(0xFF101327);
  static const Color dateBackGroundColor = Color(0xFF181B36);

  static const Color transparentColor = Colors.transparent;

  static const Color indicatorColor = Color(0xFF4BA2E6);

  static const Color darkAddToastColor = Color(0xFF2B668E);

  // ホーム画面の保有証券（個別式）枠線
  static const Color homeIndividualOwnedBrandGridLineColor = Color(0xFFB4D8F4);
}
