enum GenderType {
  man,
  woman,
  unknown,
}

extension GenderTypeEx on GenderType {
  String get text {
    switch (this) {
      case GenderType.man:
        return "男性";
      case GenderType.woman:
        return "女性";
      case GenderType.unknown:
        return "未選択";
    }
  }
}
