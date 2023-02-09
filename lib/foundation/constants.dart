import 'package:enum_to_string/enum_to_string.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fortune_client/gen/firebase_options_dev.dart' as dev;

enum Flavor { dev, prod }

class Constants {
  const Constants._({required this.baseUrl, required this.firebaseOptions});

  factory Constants.of() {
    switch (flavor) {
      case Flavor.dev:
        return Constants._dev();
      case Flavor.prod:
      default:
        return Constants._prod();
    }
  }

  factory Constants._dev() {
    return Constants._(
      baseUrl: 'http://api.fortune-dev.net:8080/api/v1',
      firebaseOptions: dev.DefaultFirebaseOptions.currentPlatform,
    );
  }

  factory Constants._prod() {
    return Constants._(
      baseUrl: 'http://prod',

      /// まだ本番環境作ってない
      firebaseOptions: dev.DefaultFirebaseOptions.currentPlatform,
    );
  }

  final String baseUrl;
  final FirebaseOptions firebaseOptions;

  static Flavor get flavor =>
      EnumToString.fromString(
        Flavor.values,
        const String.fromEnvironment('FLAVOR'),
      ) ??
      Flavor.dev;

  /// Device Previewを有効化するかどうか
  static bool get enablePreview => const bool.fromEnvironment('PREVIEW');
}
