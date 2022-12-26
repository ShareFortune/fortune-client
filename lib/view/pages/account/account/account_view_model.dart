import 'package:auto_route/auto_route.dart';
import 'package:fortune_client/view/pages/account/account/account_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final accountViewModelProvider =
    StateNotifierProvider<AccountViewModel, AsyncValue<AccountState>>((ref) {
  return AccountViewModel(ref)..initialize();
});

class AccountViewModel extends StateNotifier<AsyncValue<AccountState>> {
  AccountViewModel(this._ref) : super(const AsyncLoading());

  final Ref _ref;

  Future<void> initialize() async => await fetch();

  Future fetch() async {
    state = await AsyncValue.guard(() async {
      return const AccountState();
    });
  }

  navigateToSettingPage(StackRouter router) {
    router.push(const SettingsRoute());
  }
}
