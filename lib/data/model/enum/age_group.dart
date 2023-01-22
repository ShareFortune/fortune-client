import 'package:freezed_annotation/freezed_annotation.dart';

enum AgeGroup {
  /// 10代
  teens,

  /// 20代
  twenties,

  /// 30代
  thirties,

  /// 40代
  forties,

  /// 50代
  fifties,

  /// それ以上
  more,
}

extension AgeGroupEx on AgeGroup {
  static final rawValues = {
    AgeGroup.teens: "TEENS",
    AgeGroup.twenties: "TWENTIES",
    AgeGroup.thirties: "THIRTIES",
    AgeGroup.forties: "FORTIES",
    AgeGroup.fifties: "FIFTIES",
    AgeGroup.more: "MORE",
  };

  String get rawValue => rawValues[this]!;

  static AgeGroup from(String rawValue) {
    return rawValues.keys.firstWhere((key) => rawValues[key] == rawValue);
  }

  String get text {
    switch (this) {
      case AgeGroup.teens:
        return "10代";
      case AgeGroup.twenties:
        return "20代";
      case AgeGroup.thirties:
        return "30代";
      case AgeGroup.forties:
        return "40代";
      case AgeGroup.fifties:
        return "50代";
      case AgeGroup.more:
        return "50代以上";
    }
  }
}

class AgeGroupConverter implements JsonConverter<AgeGroup, String> {
  const AgeGroupConverter();

  @override
  AgeGroup fromJson(String rawValue) {
    return AgeGroupEx.from(rawValue);
  }

  @override
  String toJson(AgeGroup status) => status.rawValue;
}
