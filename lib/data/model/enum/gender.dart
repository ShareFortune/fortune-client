import 'package:freezed_annotation/freezed_annotation.dart';

enum Gender {
  /// 男性
  man,

  /// 女性
  woman,

  /// その他
  another,
}

extension GenderEx on Gender {
  static final rawValues = {
    Gender.man: "MAN",
    Gender.woman: "WOMAN",
    Gender.another: "ANOTHER",
  };

  String get rawValue => rawValues[this]!;

  String get text {
    switch (this) {
      case Gender.man:
        return "男性";
      case Gender.woman:
        return "女性";
      case Gender.another:
        return "その他";
    }
  }

  static Gender from(String rawValue) {
    return rawValues.keys.firstWhere((key) => rawValues[key] == rawValue);
  }

  /// [text]から[Gender]を取得
  static Gender? fromText(String text) {
    for (var value in Gender.values) {
      if (value.text == text) return value;
    }
    return null;
  }
}

class GenderConverter implements JsonConverter<Gender, String> {
  const GenderConverter();

  @override
  Gender fromJson(String rawValue) => GenderEx.from(rawValue);

  @override
  String toJson(Gender status) => status.rawValue;
}
