import 'package:fortune_client/data/model/enum/gender_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_profile_entry_state.freezed.dart';

@freezed
class DetailedProfileEntryState with _$DetailedProfileEntryState {
  const DetailedProfileEntryState._();
  const factory DetailedProfileEntryState({
    /// 性別
    GenderType? gender,

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
