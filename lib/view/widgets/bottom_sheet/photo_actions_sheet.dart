import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/util/common/image_picker.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class PhotoActionsSheet {
  ///
  /// 写真を取得
  ///
  static Future<File?> getPhoto({
    required AppTheme theme,
    required BuildContext context,
  }) {
    /// 取得方法に応じて写真を取得
    /// [method] 取得方法
    Future<File?> getPhotoByMethod(Future<File?> Function() method) async {
      final file = await method();
      File? result;

      if (file != null) {
        result = await ImagePickerService.saveImageLocally(file);
      }

      return result;
    }

    /// 写真から取得
    Future<File?> takePicture() {
      return getPhotoByMethod(() {
        return ImagePickerService.takePicture(context);
      });
    }

    /// 撮影して取得
    Future<File?> choosePhoto() {
      return getPhotoByMethod(() {
        return ImagePickerService.choosePhoto(context);
      });
    }

    return showCupertinoModalPopup<File?>(
      context: context,
      builder: (context) {
        final textColor = theme.appColors.linkColor;
        return CupertinoActionSheet(
          title: null,
          actions: [
            /// カメラ
            CupertinoActionSheetAction(
              onPressed: () async {
                return Navigator.of(context).pop(
                  await takePicture(),
                );
              },
              child: Text(
                LocaleKeys.camera_or_photo_menu_camera.tr(),
                style: TextStyle(color: textColor),
              ),
            ),

            /// 写真
            CupertinoActionSheetAction(
              onPressed: () async {
                return Navigator.of(context).pop(
                  await choosePhoto(),
                );
              },
              child: Text(
                LocaleKeys.camera_or_photo_menu_photo.tr(),
                style: TextStyle(color: textColor),
              ),
            ),
          ],
          cancelButton: CupertinoButton(
            child: Text(
              LocaleKeys.camera_or_photo_btn_cancel.tr(),
              style: TextStyle(color: textColor),
            ),
            onPressed: () => Navigator.of(context).pop(),
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
                LocaleKeys.camera_or_photo_menu_delete.tr(),
                style: TextStyle(color: theme.appColors.error),
              ),
            ),
          ],
          cancelButton: CupertinoButton(
            child: Text(
              LocaleKeys.camera_or_photo_btn_cancel.tr(),
              style: TextStyle(color: theme.appColors.linkColor),
            ),
            onPressed: () => Navigator.of(context).pop(false),
          ),
        );
      },
    );
  }
}
