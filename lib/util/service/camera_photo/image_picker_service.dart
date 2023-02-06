// ignore_for_file: use_build_context_synchronously, depend_on_referenced_packages

import 'dart:io';

import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/injector.dart';
import 'package:path/path.dart' show basename;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';
import 'package:fortune_client/view/widgets/dialog/permission_dialog.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImagePickerService {
  static final _prefs = sl<SharedPreferencesDataSource>();

  /// 写真を選択する
  static Future<File?> choosePhoto(BuildContext context) async {
    bool isShowOSDialog = true;
    isShowOSDialog =
        _prefs.getBool(AppPrefKey.isShowPhotoOSDialogValue.keyString) ?? true;

    if (isShowOSDialog) {
      await Permission.storage.request();
      await Permission.photos.request();
      isShowOSDialog = false;
      await _prefs.setBool(
        AppPrefKey.isShowPhotoOSDialogValue.keyString,
        isShowOSDialog,
      );

      if (Platform.isAndroid) {
        final androidStatus = await Permission.storage.status;
        if (androidStatus == PermissionStatus.denied) {
          return null;
        }
      }

      try {
        final image =
            await ImagePicker().pickImage(source: ImageSource.gallery);

        if (image == null) {
          logger.i('choosePhoto Cancel');

          return null;
        }

        final result = await ImagePickerService.compressFile(File(image.path));

        return result;
      } on PlatformException catch (_) {
        return null;
      }
    }

    if (Platform.isAndroid) {
      final androidStatus = await Permission.storage.status;
      if (androidStatus == PermissionStatus.granted) {
        final image =
            await ImagePicker().pickImage(source: ImageSource.gallery);

        if (image == null) {
          logger.i('choosePhoto Cancel');

          return null;
        }

        final result = await ImagePickerService.compressFile(File(image.path));

        return result;
      } else {
        await showPermissionDialog(
          context,
          LocaleKeys.permission_dialog_photo_title.tr(),
          LocaleKeys.permission_dialog_photo_message.tr(),
        );
      }
    } else if (Platform.isIOS) {
      try {
        final image =
            await ImagePicker().pickImage(source: ImageSource.gallery);

        if (image == null) {
          logger.i('choosePhoto Cancel');

          return null;
        }

        final result = await ImagePickerService.compressFile(File(image.path));

        return result;
      } on PlatformException catch (_) {
        await showPermissionDialog(
          context,
          LocaleKeys.permission_dialog_photo_title.tr(),
          LocaleKeys.permission_dialog_photo_message.tr(),
        );

        return null;
      }
    }

    return null;
  }

  /// 写真を撮影する
  static Future<File?> takePicture(
    BuildContext context,
  ) async {
    bool isShowOSDialog = true;
    isShowOSDialog =
        _prefs.getBool(AppPrefKey.isShowCameraOSDialogValue.keyString) ?? true;

    if (isShowOSDialog) {
      await Permission.camera.request();
      isShowOSDialog = false;
      await _prefs.setBool(
        AppPrefKey.isShowCameraOSDialogValue.keyString,
        isShowOSDialog,
      );

      if (Platform.isAndroid) {
        final androidStatus = await Permission.camera.status;
        if (androidStatus == PermissionStatus.denied) {
          return null;
        }
      }

      try {
        final image = await ImagePicker().pickImage(source: ImageSource.camera);

        if (image == null) {
          logger.i('takePicture Cancel');

          return null;
        }

        final result = await ImagePickerService.compressFile(File(image.path));

        return result;
      } on PlatformException catch (_) {
        return null;
      }
    }

    if (Platform.isAndroid) {
      final status = await Permission.camera.status;

      if (status == PermissionStatus.granted) {
        final image = await ImagePicker().pickImage(source: ImageSource.camera);

        if (image == null) {
          logger.i('takePicture Cancel');

          return null;
        }

        final result = await ImagePickerService.compressFile(File(image.path));

        return result;
      } else {
        await showPermissionDialog(
          context,
          LocaleKeys.permission_dialog_camera_title.tr(),
          LocaleKeys.permission_dialog_camera_message.tr(),
        );
      }
    } else if (Platform.isIOS) {
      try {
        final image = await ImagePicker().pickImage(source: ImageSource.camera);

        if (image == null) {
          logger.i('takePicture Cancel');

          return null;
        }

        final result = await ImagePickerService.compressFile(File(image.path));

        return result;
      } on PlatformException catch (_) {
        await showPermissionDialog(
          context,
          LocaleKeys.permission_dialog_camera_title.tr(),
          LocaleKeys.permission_dialog_camera_message.tr(),
        );

        return null;
      }
    }

    return null;
  }

  static Future<File?> compressFile(File file) async {
    final filePath = file.absolute.path;
    final extensions = basename(filePath).split('.').last;

    int lastIndex = 0;
    CompressFormat format = CompressFormat.jpeg;

    if (extensions == 'png') {
      lastIndex = filePath.lastIndexOf(RegExp(r'.png'));
      format = CompressFormat.png;
    } else if (extensions == 'jpg' || extensions == 'jpeg') {
      lastIndex = filePath.lastIndexOf(RegExp(r'.jp'));
      format = CompressFormat.jpeg;
    } else {
      return null;
    }

    final split = filePath.substring(0, (lastIndex));
    final outPath = "${split}_out${filePath.substring(lastIndex)}";

    var result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      outPath,
      minWidth: 100,
      minHeight: 100,
      quality: 50,
      format: format,
    );

    return result;
  }
}
