import 'package:flutter/material.dart';
import 'package:fortune_client/data/repository/debug/debug_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/debug/debug_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

final debugViewModelProvider =
    StateNotifierProvider<DebugViewModel, AsyncValue<DebugState>>((_) {
  return DebugViewModel(getIt())..init();
});

class DebugViewModel extends StateNotifier<AsyncValue<DebugState>> {
  DebugViewModel(this._debugRepository) : super(const AsyncValue.loading());

  final DebugRepository _debugRepository;

  init() async {
    state = await AsyncValue.guard(() async {
      return DebugState(
        debugInfo: await PackageInfo.fromPlatform(),
        isDummyRoginApi: await _debugRepository.getDummyRoginApi(),
        isAutomaticLogin: await _debugRepository.getAutomaticLogin(),
      );
    });
  }

  Future<void> toggleAutomaticLogin(bool value) async {
    final data = state.value;
    if (data == null) return;
    state = await AsyncValue.guard(() async {
      await _debugRepository.setAutomaticLogin(value);
      return data.copyWith(isAutomaticLogin: value);
    });
  }

  Future<bool> clearIsProfile() async {
    return await _debugRepository.clearIsProfile();
  }
}
