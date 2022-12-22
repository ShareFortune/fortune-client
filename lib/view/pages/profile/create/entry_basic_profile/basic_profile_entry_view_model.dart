import 'package:auto_route/auto_route.dart';
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_state.dart';
import 'package:fortune_client/data/model/enum/gender_type.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final basicProfileEntryViewModelProvider =
    StateNotifierProvider<BasicProfileEntryViewModel, BasicProfileEntryState>(
  (ref) {
    return BasicProfileEntryViewModel(ref);
  },
);

class BasicProfileEntryViewModel extends StateNotifier<BasicProfileEntryState> {
  BasicProfileEntryViewModel(this._ref) : super(const BasicProfileEntryState());

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

  onTapNextBtn(StackRouter router) async {
    if (state.isEntered()) {
      await _pushNext(router);
    }
  }

  _pushNext(StackRouter router) async {
    await router.push(const DetailedProfileEntryRoute());
  }
}
