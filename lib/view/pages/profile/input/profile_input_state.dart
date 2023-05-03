import 'dart:io';

import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_input_state.freezed.dart';

@freezed
class ProfileInputState with _$ProfileInputState {
  const ProfileInputState._();
  const factory ProfileInputState({
    /// 生年月日
    DateTime? birthday,

    /// 性別
    Gender? gender,

    /// 居住地
    Address? address,

    /// プロフィール画像
    File? image,
  }) = _ProfileInputState;

  String? birthdayToString() {
    if (birthday == null) return null;
    return "${birthday!.year}年${birthday!.month}月${birthday!.day}日";
  }
}
