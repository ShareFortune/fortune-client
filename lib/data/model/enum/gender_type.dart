enum GenderType {
  man,
  woman,
  another,
}

extension GenderTypeEx on GenderType {
  String get text {
    switch (this) {
      case GenderType.man:
        return "男性";
      case GenderType.woman:
        return "女性";
      case GenderType.another:
        return "その他";
    }
  }

  String get sendValue {
    switch (this) {
      case GenderType.man:
        return "MAN";
      case GenderType.woman:
        return "WOMAN";
      case GenderType.another:
        return "ANOTHER";
    }
  }
}
