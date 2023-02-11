import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();
  const factory ProfileState({
    required String? profileId,
    required AsyncValue<GetV1ProfilesResponse> profile,
  }) = _ProfileState;

  /// マイプロフィールかどうか
  bool get isMy => profileId == null;
}
