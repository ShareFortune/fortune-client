import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_update_state.freezed.dart';

@freezed
class ProfileUpdateState with _$ProfileUpdateState {
  const factory ProfileUpdateState({
    /// 身長
    int? stature,

    /// 居住地
    Address? address,

    /// お酒
    DrinkFrequency? drinkFrequency,

    /// タバコ
    CigaretteFrequency? cigaretteFrequency,
  }) = _ProfileUpdateState;
}
