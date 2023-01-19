import 'dart:convert';
import 'dart:io';

class ImageConverter {
  /// カメラロールから選択した画像ファイルをBase64に変換
  /// [file] 変換まえの画像ファイル
  static Future<String> convertImageForBase64(File file) async {
    List<int> imageBytes = await file.readAsBytes();
    return base64Encode(imageBytes);
  }
}
