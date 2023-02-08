// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fortune_client/data/repository/image_picker/image_picker_repository.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/util/converter/image_converter.dart';
import 'package:fortune_client/view/widgets/dialog/permission_dialog.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class ImagePickerRepositoryImpl implements ImagePickerRepository {
  ImagePickerRepositoryImpl();

  /// 圧縮処理
  static const compress = ImageConverter.compress;

  @override
  Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  @override
  Future<File> saveImageLocally(File image) async {
    final path = await localPath;
    final imagePath = '$path/${image.path.split('/').last}';
    File imageFile = File(imagePath);
    var savedFile = await imageFile.writeAsBytes(await image.readAsBytes());

    return savedFile;
  }

  /// 権限リクエスト
  Future<bool> requestPermissions(List<Permission> permissions) async {
    final statuses = await permissions.request();
    if (permissions.any((permission) => !statuses[permission]!.isGranted)) {
      /// 権限が存在しないのでアプリの設定ページへ遷移
      /// TODO: ダイアログ表示
      openAppSettings();
      return false;
    }
    return true;
  }

  @override
  Future<File?> choosePhoto(BuildContext context) async {
    final isGranted = await requestPermissions([
      Platform.isAndroid ? Permission.storage : Permission.photos,
    ]);

    try {
      if (isGranted) {
        final image = await ImagePicker().pickImage(
          source: ImageSource.gallery,
        );

        if (image != null) {
          return await compress(File(image.path));
        }
      }
    } on PlatformException catch (_) {
      await showPermissionDialog(
        context,
        LocaleKeys.permission_dialog_photo_title.tr(),
        LocaleKeys.permission_dialog_photo_message.tr(),
      );
    }
    return null;
  }

  @override
  Future<File?> takePicture(BuildContext context) async {
    final isGranted = await requestPermissions([Permission.camera]);

    try {
      if (isGranted) {
        final image = await ImagePicker().pickImage(
          source: ImageSource.camera,
        );

        if (image != null) {
          return await compress(File(image.path));
        }
      }
    } on PlatformException catch (_) {
      await showPermissionDialog(
        context,
        LocaleKeys.permission_dialog_camera_title.tr(),
        LocaleKeys.permission_dialog_camera_message.tr(),
      );
    }
    return null;
  }
}
