import 'dart:io';

import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'my_page_state.freezed.dart';

@freezed
class MyPageState with _$MyPageState {
  const factory MyPageState({
    File? icon,
    required AsyncValue<GetV1ProfilesResponse> profile,
  }) = _MyPageState;
}
