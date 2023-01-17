import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

Future<void> showToast(
  BuildContext context,
  AppTheme theme,
  String msg,
) async {
  /// メッセージテキストスタイル
  final msgTextColor = theme.appColors.onPrimary;
  final msgTextStyle = theme.textTheme.h30.paint(msgTextColor);

  FToast fToast = FToast();
  fToast.init(context);

  Widget toast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(23),
      color: theme.appColors.primary,
    ),
    child: Text(msg, style: msgTextStyle),
  );

  fToast.showToast(
    child: toast,
    gravity: ToastGravity.BOTTOM,
    toastDuration: const Duration(seconds: 2),
  );
}
