import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/profile/create/profile_create_state.dart';

final profileCreateViewModelProvider =
    StateNotifierProvider<ProfileCreateViewModel, ProfileCreateState>((ref) {
  return ProfileCreateViewModel(ref);
});

class ProfileCreateViewModel extends StateNotifier<ProfileCreateState> {
  ProfileCreateViewModel(this._ref) : super(const ProfileCreateState());

  final Ref _ref;

  onChangeName(String value) {}

  Future<void> create() async {}

  onNext() {}
}
