import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> showPermissionDialog(
  BuildContext context,
  String title,
  String content,
) async {
  await showPlatformDialog(
    context: context,
    builder: (_) => WillPopScope(
      child: PlatformAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          Builder(
            builder: (context) {
              return PlatformDialogAction(
                child: PlatformText(
                  LocaleKeys.actions_cancel.tr(),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              );
            },
          ),
          Builder(
            builder: (context) {
              return PlatformDialogAction(
                child: PlatformText(
                  LocaleKeys.permission_menu_toSettings.tr(),
                ),
                onPressed: () {
                  openAppSettings();
                  Navigator.of(context).pop();
                },
              );
            },
          ),
        ],
      ),
      onWillPop: () async => false,
    ),
  );
}
