import 'dart:io';

import 'package:path_provider/path_provider.dart';

class LocalFileService {
  /// ドキュメントのパスを取得
  static Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  /// 写真の保存
  static Future<File> saveLocalImage(File image) async {
    final path = await localPath;
    final imagePath = '$path/${image.path.split('/').last}';
    File imageFile = File(imagePath);
    var savedFile = await imageFile.writeAsBytes(await image.readAsBytes());

    return savedFile;
  }
}
