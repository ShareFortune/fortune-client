import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as path;

class ImageConverter {
  /// カメラロールから選択した画像ファイルをBase64に変換
  /// [file] 変換まえの画像ファイル
  static Future<String> convertImageForBase64(File file) async {
    final imageExtension = path.extension(file.path).replaceAll('.', '');

    //写真をBase64に変換
    List<int> imageBytes = await file.readAsBytes();

    final mimeType = imageExtension.isEmpty ? "png" : imageExtension;
    final uri = Uri.dataFromBytes(imageBytes, mimeType: "image/$mimeType");
    return uri.toString();
  }
}
