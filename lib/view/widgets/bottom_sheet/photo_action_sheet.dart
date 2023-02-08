import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:fortune_client/data/repository/image_picker/image_picker_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';

class PhotoActionSheet {
  static show(
    BuildContext context,
    void Function(File?) selected,
  ) {
    final ImagePickerRepository repository = sl();
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
                  final File? file = await repository.takePicture(context);
                  File? result;

                  if (file != null) {
                    result = await repository.saveImageLocally(file);
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
                  final File? file = await repository.choosePhoto(context);
                  File? result;

                  if (file != null) {
                    result = await repository.saveImageLocally(file);
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

// showPhotoActionSheet(
//   BuildContext context,
//   void Function(File?) selected,
// ) async {
//   showCupertinoModalPopup(
//     context: context,
//     builder: (context) {
//       return WillPopScope(
//         onWillPop: () async => false,
//         child: CupertinoActionSheet(
//           title: null,
//           actions: [
//             CupertinoActionSheetAction(
//               onPressed: () async {
//                 Navigator.of(context).pop();
//                 final File? file =
//                     await ImagePickerService.takePicture(context);
//                 File? result;

//                 if (file != null) {
//                   result = await LocalFileService.saveLocalImage(file);
//                 }
//                 selected(result);
//               },
//               child: Text(
//                 LocaleKeys.camera_or_photo_menuCamera.tr(),
//               ),
//             ),
//             CupertinoActionSheetAction(
//               onPressed: () async {
//                 Navigator.of(context).pop();
//                 final File? file =
//                     await ImagePickerService.choosePhoto(context);
//                 File? result;

//                 if (file != null) {
//                   result = await LocalFileService.saveLocalImage(file);
//                 }
//                 selected(result);
//               },
//               child: Text(
//                 LocaleKeys.camera_or_photo_menuPhoto.tr(),
//               ),
//             ),
//           ],
//           cancelButton: CupertinoButton(
//             child: Text(
//               LocaleKeys.camera_or_photo_btn_cancel.tr(),
//             ),
//             onPressed: () => Navigator.of(context).pop(),
//           ),
//         ),
//       );
//     },
//   );
// }
