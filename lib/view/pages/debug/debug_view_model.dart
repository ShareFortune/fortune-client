import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/debug/debug_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

final debugViewModelProvider =
    StateNotifierProvider<DebugViewModel, AsyncValue<DebugState>>((_) {
  return DebugViewModel()..init();
});

class DebugViewModel extends StateNotifier<AsyncValue<DebugState>> {
  DebugViewModel() : super(const AsyncValue.loading());

  init() async {
    state = await AsyncValue.guard(() async {
      return DebugState(
        debugInfo: await PackageInfo.fromPlatform(),
        isDummyRoginApi: await Repository.debug.getDummyRoginApi(),
        isAutomaticLogin: await Repository.debug.getAutomaticLogin(),
      );
    });
  }

  Future<void> toggleAutomaticLogin(bool value) async {
    final data = state.value;
    if (data == null) return;
    state = await AsyncValue.guard(() async {
      await Repository.debug.setAutomaticLogin(value);
      return data.copyWith(isAutomaticLogin: value);
    });
  }

  Future<bool> clearIsProfile() async {
    return await Repository.debug.clearIsProfile();
  }
}
