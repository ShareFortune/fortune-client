import 'package:auto_route/auto_route.dart';
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_state.dart';
import 'package:fortune_client/view/pages/profile/profile/gender_type.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final detailedProfileEntryViewModelProvider = StateNotifierProvider<
    DetailedProfileEntryViewModel, BasicProfileEntryState>(
  (ref) {
    return DetailedProfileEntryViewModel(ref);
  },
);

class DetailedProfileEntryViewModel
    extends StateNotifier<BasicProfileEntryState> {
  DetailedProfileEntryViewModel(this._ref)
      : super(const BasicProfileEntryState());

  final Ref _ref;

  changeName(String value) {
    state = state.copyWith(name: value);
  }

  changeGender(GenderType value) {
    state = state.copyWith(gender: value);
  }

  changeAddress(String value) {
    state = state.copyWith(adress: value);
  }

  Future<void> create() async {}

  onTapNextBtn(StackRouter router) async {
    if (state.isEntered()) {
      /// Stateを親ウィジットのViewModelに保存
      ///
      await _pushNext(router);
    }
  }

  _pushNext(StackRouter router) async {
    await router.push(ProfileCreationManagementRoute());
  }
}
