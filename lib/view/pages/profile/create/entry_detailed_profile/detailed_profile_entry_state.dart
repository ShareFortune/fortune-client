import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_profile_entry_state.freezed.dart';

@freezed
class DetailedProfileEntryState with _$DetailedProfileEntryState {
  const factory DetailedProfileEntryState({
    /// 名前
    String? name,

    /// 性別
    Gender? gender,

    /// 身長
    int? stature,

    /// お酒
    DrinkFrequency? drinkFrequency,

    /// タバコ
    CigaretteFrequency? cigaretteFrequency,

    /// 居住地
    Address? address,
  }) = _DetailedProfileEntryState;
}
