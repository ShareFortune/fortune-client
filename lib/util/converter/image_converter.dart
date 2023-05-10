import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as path;
import 'package:flutter_image_compress/flutter_image_compress.dart';

class ImageConverter {
  /// HttpsをHttpに変換
  static String convertHttpsToHttp(String url) {
    return url.replaceFirst("https", "http");
  }

  /// カメラロールから選択した画像ファイルをBase64に変換
  /// [file] 変換まえの画像ファイル
  static Future<String> toBase64(File file) async {
    final imageExtension = path.extension(file.path).replaceAll('.', '');

    //写真をBase64に変換
    List<int> imageBytes = await file.readAsBytes();

    final mimeType = imageExtension.isEmpty ? "png" : imageExtension;
    final uri = Uri.dataFromBytes(imageBytes, mimeType: "image/$mimeType");
    return uri.toString();
  }

  /// 画像圧縮
  ///
  /// 最小横幅
  /// [minWidth] 80
  /// 最小高さ
  /// [minHeight] 80
  /// 解像度
  /// [quality] 50
  static Future<File?> compress(File file) async {
    final filePath = file.absolute.path;
    final extensions = path.basename(filePath).split('.').last;

    int lastIndex = 0;
    CompressFormat format = CompressFormat.jpeg;

    /// 画像の拡張子を判定
    if (extensions == 'png') {
      lastIndex = filePath.lastIndexOf(RegExp(r'.png'));
      format = CompressFormat.png;
    } else if (extensions == 'jpg' || extensions == 'jpeg') {
      lastIndex = filePath.lastIndexOf(RegExp(r'.jp'));
      format = CompressFormat.jpeg;
    } else {
      return null;
    }

    /// 画像の保存先
    final split = filePath.substring(0, (lastIndex));
    File imageFile = File("${split}_out${filePath.substring(lastIndex)}");

    /// 画像圧縮
    var result = await FlutterImageCompress.compressWithFile(
      file.absolute.path,
      minWidth: 80,
      minHeight: 80,
      quality: 50,
      format: format,
    );

    if (result == null) return null;
    return imageFile..writeAsBytesSync(result);
  }
}
