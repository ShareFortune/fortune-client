import 'package:fortune_client/data/repository/users/users_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/util/converter/datetime_format_converter.dart';
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final basicProfileEntryViewModelProvider =
    StateNotifierProvider<BasicProfileEntryViewModel, BasicProfileEntryState>(
  (ref) => BasicProfileEntryViewModel(sl()),
);

class BasicProfileEntryViewModel extends StateNotifier<BasicProfileEntryState> {
  BasicProfileEntryViewModel(this._repository)
      : super(const BasicProfileEntryState());

  final UsersRepository _repository;

  changeName(String value) {
    state = state.copyWith(name: value);
  }

  changeBirthday(DateTime? value) {
    state = state.copyWith(birthday: value);
  }

  onCreate() async {
    if (state.birthday == null) return;
    print("ユーザー作成");
    final result = await _repository.create(
      state.name,
      DateTimeFormatConverter.convertDateTimeYYYYMMDD(
        state.birthday!,
        delimiter: "-",
      ),
    );
    if (result) navigateToEntryDetailedProfile();
  }

  navigateToEntryDetailedProfile() async {
    await sl<AppRouter>().push(const DetailedProfileEntryRoute());
  }
}
