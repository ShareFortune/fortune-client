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
