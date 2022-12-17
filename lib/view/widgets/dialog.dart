import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

Future<void> showInfoDialog(
  BuildContext context,
  String content, {
  VoidCallback? onPressed,
}) async {
  await showPlatformDialog(
    context: context,
    builder: (_) => WillPopScope(
      child: PlatformAlertDialog(
        content: Text(content),
        actions: <Widget>[
          PlatformDialogAction(
            onPressed: onPressed,
            child: PlatformText("OK"),
          ),
        ],
      ),
      onWillPop: () async => false,
    ),
  );
}
