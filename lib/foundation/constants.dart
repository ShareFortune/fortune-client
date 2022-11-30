import 'package:enum_to_string/enum_to_string.dart';

enum Flavor { dev, prod }

class Constants {
  const Constants._({required this.baseUrl});

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
    return const Constants._(baseUrl: 'http://api.fortune-dev.net:8080/api/v1');
  }

  factory Constants._prod() {
    return const Constants._(baseUrl: 'http://prod');
  }

  /// エンドポイント
  final String baseUrl;

  /// 環境 Flavor
  static Flavor get flavor =>
      EnumToString.fromString(
        Flavor.values,
        const String.fromEnvironment('FLAVOR'),
      ) ??
      Flavor.dev;

  /// Device Previewを有効化するかどうか
  static bool get enablePreview => const bool.fromEnvironment('PREVIEW');
}