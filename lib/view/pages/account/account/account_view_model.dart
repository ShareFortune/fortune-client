import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/account/account/account_state.dart';

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
}
