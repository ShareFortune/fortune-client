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

// extension IOFileExtensions on File {
//   Future<File> convertJpg({int resizeWidth = 500}) async {
//     if (this == null) return this;
//     try {
//       final image = decodeImage(readAsBytesSync());
//       final aspect = image.height / image.width;
//       final thumbnail = copyResize(image,
//           width: resizeWidth, height: resizeWidth * aspect.toInt());
//       return await writeAsBytes(encodeJpg(thumbnail));
//     } catch (error) {
//       debugPrint('convert jpg error: ${error.toString()}');
//       return this;
//     }
//   }
// }
