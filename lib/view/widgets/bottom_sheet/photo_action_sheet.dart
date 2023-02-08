import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/util/common/image_picker.dart';

class PhotoActionSheet {
  static show(
    BuildContext context,
    void Function(File?) selected,
  ) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => false,
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
                    result = await ImagePickerService.saveImageLocally(file);
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
                    result = await ImagePickerService.saveImageLocally(file);
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
        );
      },
    );
  }
}
