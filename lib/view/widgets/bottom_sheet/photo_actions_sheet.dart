import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/util/common/image_utils.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PhotoActionsSheet {
  ///
  /// 写真を取得
  ///
  static Future<void> getPhoto(
    // BuildContext context,
    Function(File)? onGetPhoto,
  ) async {
    /// 取得方法に応じて写真を取得
    /// [method] 取得方法
    Future<File?> getPhotoByMethod(Future<File?> Function() method) async {
      final file = await method();
      File? result;

      if (file != null) {
        result = await ImageUtils.saveImageLocally(file);
      }

      return result;
    }

    /// 写真から取得
    Future<File?> takePicture(BuildContext context) {
      return getPhotoByMethod(
        () => ImageUtils.takePicture(context),
      );
    }

    /// 撮影して取得
    Future<File?> choosePhoto(BuildContext context) {
      return getPhotoByMethod(
        () => ImageUtils.choosePhoto(context),
      );
    }

    return showCupertinoModalPopup(
      context: navigator.context,
      builder: (context) {
        return CupertinoActionSheet(
          title: null,
          actions: [
            /// カメラ
            ActionSheetItem(
              title: LocaleKeys.permission_menu_camera.tr(),
              callback: () async {
                final photo = await takePicture(context);
                if (photo != null) return onGetPhoto?.call(photo);
              },
            ),

            /// 写真
            ActionSheetItem(
              title: LocaleKeys.permission_menu_photo.tr(),
              callback: () async {
                final photo = await choosePhoto(context);
                if (photo != null) return onGetPhoto?.call(photo);
              },
            ),
          ],
          cancelButton: ActionSheetCancelBtn(
            callback: () => navigator.goBack(),
          ),
        );
      },
    );
  }

  ///
  /// 写真削除の確認
  ///
  /// 削除する場合[true]を返す
  static Future<bool?> deleteConfirmation({
    required AppTheme theme,
    required BuildContext context,
    required String title,
  }) async {
    return showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          title: Text(title),
          actions: [
            ActionSheetItem(
              isDefaultAction: false,
              title: LocaleKeys.permission_menu_deletePhoto.tr(),
              callback: () => navigator.goBack(true),
            ),
          ],
          cancelButton: ActionSheetCancelBtn(
            callback: () => navigator.goBack(false),
          ),
        );
      },
    );
  }
}

class ActionSheetItem extends HookConsumerWidget {
  const ActionSheetItem({
    super.key,
    required this.title,
    required this.callback,
    this.isDefaultAction = true,
  });

  final String title;
  final Function() callback;
  final bool isDefaultAction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return CupertinoActionSheetAction(
      onPressed: () async {
        navigator.goBack();
        callback.call();
      },
      child: Text(
        title,
        style: theme.textTheme.h40.paint(
          isDefaultAction ? theme.appColors.linkColor : theme.appColors.error,
        ),
      ),
    );
  }
}

class ActionSheetCancelBtn extends HookConsumerWidget {
  const ActionSheetCancelBtn({
    super.key,
    this.title = LocaleKeys.actions_cancel,
    this.callback,
  });

  final String title;
  final Function()? callback;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return CupertinoButton(
      onPressed: () async {
        navigator.goBack();
        callback?.call();
      },
      child: Text(
        title.tr(),
        style: theme.textTheme.h40.paint(theme.appColors.linkColor),
      ),
    );
  }
}
