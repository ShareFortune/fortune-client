import 'package:fortune_client/data/model/core/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/core/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/core/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/core/enum/gender.dart';
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
    AddressWithId? addressWithId,
  }) = _DetailedProfileEntryState;
}
