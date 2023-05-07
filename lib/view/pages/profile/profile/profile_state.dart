import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();
  const factory ProfileState({
    required String? profileId,
    required AsyncValue<ProfileResponse> profile,
  }) = _ProfileState;

  /// マイプロフィールかどうか
  bool get isMy => profileId == null;
}
