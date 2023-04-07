import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';

/// ルームWidgetのTheme
class RoomTheme {
  /// ルーム状態の説明文のテキスト
  String descriptionText;

  /// ルーム状態の説明文のカラー
  Color descriptionColor;

  /// ルーム状態の説明文のスタイル
  TextStyle descriptionStyle;

  /// 全体の背景色
  Color backgroundColor;

  /// ユーザーアイコン部分の背景色
  Color userBackgroundColor;

  /// 枠線（上下）
  BorderSide? border;

  RoomTheme({
    this.descriptionText = "",
    this.descriptionColor = Colors.black,
    required this.descriptionStyle,
    required this.backgroundColor,
    required this.userBackgroundColor,
    this.border,
  });

  RoomTheme copyWith({
    String? descriptionText,
    Color? descriptionColor,
    TextStyle? descriptionStyle,
    Color? backgroundColor,
    Color? userBackgroundColor,
    BorderSide? border,
  }) {
    return RoomTheme(
      descriptionText: descriptionText ?? this.descriptionText,
      descriptionColor: descriptionColor ?? this.descriptionColor,
      descriptionStyle: descriptionStyle ?? this.descriptionStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      userBackgroundColor: userBackgroundColor ?? this.userBackgroundColor,
      border: border ?? this.border,
    );
  }

  /// ルーム状態の説明文
  Text get description => Text(
        descriptionText,
        style: descriptionStyle.paint(descriptionColor),
      );
}
