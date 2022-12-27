import 'package:auto_route/auto_route.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/data/repository/debug/debug_repository.dart';
import 'package:fortune_client/foundation/constants.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/auth/login/login_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginViewModelProvider =
    StateNotifierProvider<LoginViewModel, AsyncValue<void>>((ref) {
  return LoginViewModel(sl(), sl());
});

class LoginViewModel extends StateNotifier<AsyncValue<void>> {
  LoginViewModel(this._authRepository, this._debugRepository)
      : super(const AsyncData(null));

  final AuthRepository _authRepository;
  final DebugRepository _debugRepository;

  /// デバッグモードオンオフ
  Future<bool?> toggleDebugMode() async {
    if (Constants.flavor == Flavor.prod) {
      return null;
    }

    final isDummyRoginApi = await _debugRepository.getDummyRoginApi();
    _debugRepository.setDummyRoginApi(!isDummyRoginApi);
    return !isDummyRoginApi;
  }

  Future<void> onTapLoginBtn(AuthType type, StackRouter router) async {
    /// DEBUG
    if (await _debugRepository.getDummyRoginApi()) {
      return await pushHome(router);
    }
    final result = await loginWithSns(type);
    if (result && await _authRepository.isLogin()) {
      await pushHome(router);
    }
  }

  /// ログイン
  /// [type] 各種ログイン方法
  Future<bool> loginWithSns(AuthType type) async {
    state = await AsyncValue.guard(() async {
      switch (type) {
        case AuthType.apple:
          return await _authRepository.signInWithApple();
        case AuthType.google:
          return await _authRepository.signInWithGoogle();
        case AuthType.twitter:
          return await _authRepository.signInWithTwitter();
      }
    });
    return state is AsyncData;
  }

  Future pushHome(StackRouter router) async {
    await router.push(const HomeRoute());
  }
}
