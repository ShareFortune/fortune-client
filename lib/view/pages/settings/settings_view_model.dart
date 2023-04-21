import 'package:fortune_client/data/repository/repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final settingsViewModelProvider =
    StateNotifierProvider<SettingsViewModelProvider, void>((ref) {
  return SettingsViewModelProvider();
});

class SettingsViewModelProvider extends StateNotifier<void> {
  SettingsViewModelProvider() : super(null);

  /// ロウアウト
  logout() async {
    await Repository.auth.logout().whenComplete(() {
      // getIt<AppRouter>().popUntilRoot();
    });
  }
}
