import 'package:freezed_annotation/freezed_annotation.dart';

enum DrinkFrequency {
  /// いつも飲む
  always,

  /// よく飲む
  often,

  /// たまに飲む
  sometimes,

  /// 飲まない
  never,
}

extension DrinkFrequencyEx on DrinkFrequency {
  static final rawValues = {
    DrinkFrequency.always: "ALWAYS",
    DrinkFrequency.often: "OFTEN",
    DrinkFrequency.sometimes: "SOMETIMES",
    DrinkFrequency.never: "NEVER",
  };

  String get rawValue => rawValues[this]!;

  static DrinkFrequency from(String rawValue) {
    return rawValues.keys.firstWhere((key) => rawValues[key] == rawValue);
  }

  String get text {
    switch (this) {
      case DrinkFrequency.always:
        return "いつも飲む";
      case DrinkFrequency.often:
        return "よく飲む";
      case DrinkFrequency.sometimes:
        return "たまに飲む";
      case DrinkFrequency.never:
        return "飲まない";
    }
  }
}

class DrinkFrequencyConverter implements JsonConverter<DrinkFrequency, String> {
  const DrinkFrequencyConverter();

  @override
  DrinkFrequency fromJson(String rawValue) {
    return DrinkFrequencyEx.from(rawValue);
  }

  @override
  String toJson(DrinkFrequency status) => status.rawValue;
}
