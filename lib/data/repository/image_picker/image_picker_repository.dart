import 'dart:io';

import 'package:flutter/material.dart';

abstract class ImagePickerRepository {
  /// ドキュメントのパスを取得
  Future<String> get localPath;

  /// 写真の保存
  Future<File> saveImageLocally(File image);

  /// 写真を選択する
  Future<File?> choosePhoto(BuildContext context);

  /// 写真を撮影する
  Future<File?> takePicture(BuildContext context);
}
