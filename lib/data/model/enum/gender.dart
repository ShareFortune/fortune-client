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

  static Gender from(String rawValue) {
    print(rawValue);
    return rawValues.keys.firstWhere((key) => rawValues[key] == rawValue);
  }

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
}

class GenderConverter implements JsonConverter<Gender, String> {
  const GenderConverter();

  @override
  Gender fromJson(String rawValue) => GenderEx.from(rawValue);

  @override
  String toJson(Gender status) => status.rawValue;
}
