import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/util/common/image_utils.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class PhotoActionsSheet {
  ///
  /// 写真を取得
  ///
  static Future<void> getPhoto(
    AppTheme theme,
    BuildContext context,
    Function(File) onGetPhoto,
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
    Future<File?> takePicture() {
      return getPhotoByMethod(() => ImageUtils.takePicture(context));
    }

    /// 撮影して取得
    Future<File?> choosePhoto() {
      return getPhotoByMethod(() => ImageUtils.choosePhoto(context));
    }

    return showCupertinoModalPopup(
      context: context,
      builder: (context) {
        final textColor = theme.appColors.linkColor;
        return CupertinoActionSheet(
          title: null,
          actions: [
            /// カメラ
            CupertinoActionSheetAction(
              onPressed: () async {
                navigator.goBack();
                final photo = await takePicture();
                if (photo != null) return onGetPhoto(photo);
              },
              child: Text(
                LocaleKeys.permission_menu_camera.tr(),
                style: TextStyle(color: textColor),
              ),
            ),

            /// 写真
            CupertinoActionSheetAction(
              onPressed: () async {
                navigator.goBack();
                final photo = await choosePhoto();
                if (photo != null) return onGetPhoto(photo);
              },
              child: Text(
                LocaleKeys.permission_menu_photo.tr(),
                style: TextStyle(color: textColor),
              ),
            ),
          ],
          cancelButton: CupertinoButton(
            child: Text(
              LocaleKeys.actions_cancel.tr(),
              style: TextStyle(color: textColor),
            ),
            onPressed: () => navigator.goBack(),
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
            CupertinoActionSheetAction(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(
                LocaleKeys.permission_menu_deletePhoto.tr(),
                style: TextStyle(color: theme.appColors.error),
              ),
            ),
          ],
          cancelButton: CupertinoButton(
            child: Text(
              LocaleKeys.actions_cancel.tr(),
              style: TextStyle(color: theme.appColors.linkColor),
            ),
            onPressed: () => Navigator.of(context).pop(false),
          ),
        );
      },
    );
  }
}
