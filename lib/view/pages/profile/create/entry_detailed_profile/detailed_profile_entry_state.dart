import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_profile_entry_state.freezed.dart';

@freezed
class DetailedProfileEntryState with _$DetailedProfileEntryState {
  const DetailedProfileEntryState._();
  const factory DetailedProfileEntryState({
    /// 身長
    @Default(170) int height,

    /// 職業
    @Default("未選択") String occupation,

    /// 居住地
    @Default("未選択") String residence,

    /// 出身地
    @Default("未選択") String birthPlace,

    /// お酒
    @Default("未選択") String drinkFrequency,

    /// タバコ
    @Default("未選択") String cigaretteFrequency,
  }) = _DetailedProfileEntryState;
}
