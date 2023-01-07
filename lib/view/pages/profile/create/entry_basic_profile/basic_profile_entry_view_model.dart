import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_state.dart';
import 'package:fortune_client/data/model/enum/gender_type.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final basicProfileEntryViewModelProvider =
    StateNotifierProvider<BasicProfileEntryViewModel, BasicProfileEntryState>(
  (ref) => BasicProfileEntryViewModel(),
);

class BasicProfileEntryViewModel extends StateNotifier<BasicProfileEntryState> {
  BasicProfileEntryViewModel() : super(const BasicProfileEntryState());

  changeName(String value) {
    state = state.copyWith(name: value);
  }

  changeGender(GenderType value) {
    state = state.copyWith(gender: value);
  }

  changeBirthday(DateTime? value) {
    state = state.copyWith(birthday: value);
  }

  navigateToEntryDetailedProfile() async {
    await sl<AppRouter>().push(const DetailedProfileEntryRoute());
  }
}
