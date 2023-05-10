// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/util/converter/image_converter.dart';
import 'package:fortune_client/view/widgets/dialog/permission_dialog.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageUtils {
  /// ドキュメントのパスを取得
  static Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  /// 写真の保存
  static Future<File> saveImageLocally(File image) async {
    final path = await localPath;
    final imagePath = '$path/${image.path.split('/').last}';
    File imageFile = File(imagePath);
    var savedFile = await imageFile.writeAsBytes(await image.readAsBytes());

    return savedFile;
  }

  /// 権限リクエスト
  static Future<bool> requestPermissions(List<Permission> permissions) async {
    final statuses = await permissions.request();
    if (permissions.any((permission) => !statuses[permission]!.isGranted)) {
      /// 権限が存在しないのでアプリの設定ページへ遷移
      openAppSettings();
      return false;
    }
    return true;
  }

  /// 写真を選択する
  static Future<File?> choosePhoto(BuildContext context) async {
    final isGranted = await requestPermissions([
      Platform.isAndroid ? Permission.storage : Permission.photos,
    ]);

    try {
      if (isGranted) {
        final image = await ImagePicker().pickImage(
          source: ImageSource.gallery,
        );

        if (image != null) {
          final compressed = await ImageConverter.compress(File(image.path));
          if (compressed != null) return compressed;
        }
      }
    } on PlatformException catch (_) {
      await showPermissionDialog(
        context,
        LocaleKeys.permission_photo_title.tr(),
        LocaleKeys.permission_photo_message.tr(),
      );
    }
    return null;
  }

  /// 写真を撮影する
  static Future<File?> takePicture(BuildContext context) async {
    final isGranted = await requestPermissions([Permission.camera]);

    try {
      if (isGranted) {
        final image = await ImagePicker().pickImage(
          source: ImageSource.camera,
        );

        if (image != null) {
          return await ImageConverter.compress(File(image.path));
        }
      }
    } on PlatformException catch (_) {
      await showPermissionDialog(
        context,
        LocaleKeys.permission_camera_title.tr(),
        LocaleKeys.permission_camera_message.tr(),
      );
    }
    return null;
  }
}
