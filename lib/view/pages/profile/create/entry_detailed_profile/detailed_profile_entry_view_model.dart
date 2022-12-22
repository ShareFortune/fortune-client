import 'package:auto_route/auto_route.dart';
import 'package:fortune_client/view/pages/profile/create/entry_detailed_profile/detailed_profile_entry_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final detailedProfileEntryViewModelProvider = StateNotifierProvider<
    DetailedProfileEntryViewModel, DetailedProfileEntryState>(
  (ref) {
    return DetailedProfileEntryViewModel(ref);
  },
);

class DetailedProfileEntryViewModel
    extends StateNotifier<DetailedProfileEntryState> {
  DetailedProfileEntryViewModel(this._ref)
      : super(const DetailedProfileEntryState());

  final Ref _ref;

  onTapNextBtn(StackRouter router) async {
    await _pushNext(router);
  }

  _pushNext(StackRouter router) async {
    await router.push(const ProfileIconImageEntryRoute());
  }
}
