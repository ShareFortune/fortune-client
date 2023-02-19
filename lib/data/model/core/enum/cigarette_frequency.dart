import 'package:freezed_annotation/freezed_annotation.dart';

enum CigaretteFrequency {
  /// いつも吸う
  always,

  /// よく吸う
  often,

  /// たまに吸う
  sometimes,

  /// 吸わない
  never,
}

extension CigaretteFrequencyEx on CigaretteFrequency {
  static final rawValues = {
    CigaretteFrequency.always: "ALWAYS",
    CigaretteFrequency.often: "OFTEN",
    CigaretteFrequency.sometimes: "SOMETIMES",
    CigaretteFrequency.never: "NEVER",
  };

  String get rawValue => rawValues[this]!;

  static CigaretteFrequency from(String rawValue) {
    return rawValues.keys.firstWhere((key) => rawValues[key] == rawValue);
  }

  String get text {
    switch (this) {
      case CigaretteFrequency.always:
        return "いつも吸う";
      case CigaretteFrequency.often:
        return "よく吸う";
      case CigaretteFrequency.sometimes:
        return "たまに吸う";
      case CigaretteFrequency.never:
        return "吸わない";
    }
  }
}

class CigaretteFrequencyConverter
    implements JsonConverter<CigaretteFrequency, String> {
  const CigaretteFrequencyConverter();

  @override
  CigaretteFrequency fromJson(String rawValue) {
    return CigaretteFrequencyEx.from(rawValue);
  }

  @override
  String toJson(CigaretteFrequency status) => status.rawValue;
}
