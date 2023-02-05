import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/util/service/camera_photo/image_picker_service.dart';
import 'package:fortune_client/util/service/camera_photo/local_file_service.dart';

showPhotoActionSheet(
  BuildContext context,
  void Function(File?) selected,
) async {
  showCupertinoModalPopup(
    context: context,
    builder: (context) {
      return WillPopScope(
        child: CupertinoActionSheet(
          title: null,
          actions: [
            CupertinoActionSheetAction(
              onPressed: () async {
                Navigator.of(context).pop();
                final File? file =
                    await ImagePickerService.takePicture(context);
                File? result;

                if (file != null) {
                  result = await LocalFileService.saveLocalImage(file);
                }
                selected(result);
              },
              child: Text(
                LocaleKeys.camera_or_photo_menuCamera.tr(),
              ),
            ),
            CupertinoActionSheetAction(
              onPressed: () async {
                Navigator.of(context).pop();
                final File? file =
                    await ImagePickerService.choosePhoto(context);
                File? result;

                if (file != null) {
                  result = await LocalFileService.saveLocalImage(file);
                }
                selected(result);
              },
              child: Text(
                LocaleKeys.camera_or_photo_menuPhoto.tr(),
              ),
            ),
          ],
          cancelButton: CupertinoButton(
            child: Text(
              LocaleKeys.camera_or_photo_btn_cancel.tr(),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        onWillPop: () async => false,
      );
    },
  );
}
