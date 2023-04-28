import 'dart:io';

import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'my_page_state.freezed.dart';

@freezed
class MyPageState with _$MyPageState {
  const factory MyPageState({
    File? icon,
    required AsyncValue<ProfileResponse> profile,
  }) = _MyPageState;
}
