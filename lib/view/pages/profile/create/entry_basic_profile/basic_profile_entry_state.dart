import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_profile_entry_state.freezed.dart';

@freezed
class BasicProfileEntryState with _$BasicProfileEntryState {
  const factory BasicProfileEntryState({
    @Default("") String name,
    @Default("未選択") String gender,
    @Default("東京都") String adress,
  }) = _BasicProfileEntryState;
}

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
