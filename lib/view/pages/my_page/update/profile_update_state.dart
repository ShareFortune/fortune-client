import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/data/model/core/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/core/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/core/enum/drink_frequency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_update_state.freezed.dart';

@freezed
class ProfileUpdateState with _$ProfileUpdateState {
  const factory ProfileUpdateState({
    /// 身長
    int? stature,

    /// 居住地
    AddressWithId? addressWithId,

    /// お酒
    DrinkFrequency? drinkFrequency,

    /// タバコ
    CigaretteFrequency? cigaretteFrequency,
  }) = _ProfileUpdateState;
}
