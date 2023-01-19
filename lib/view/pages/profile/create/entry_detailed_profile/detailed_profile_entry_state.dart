import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_profile_entry_state.freezed.dart';

@freezed
class DetailedProfileEntryState with _$DetailedProfileEntryState {
  const factory DetailedProfileEntryState({
    /// 名前
    @Default("") String name,

    /// 性別
    Gender? gender,

    /// 身長
    int? height,

    /// お酒
    String? drinkFrequency,

    /// タバコ
    String? cigaretteFrequency,

    /// 職業
    String? occupation,

    /// 居住地
    String? residence,
  }) = _DetailedProfileEntryState;
}
