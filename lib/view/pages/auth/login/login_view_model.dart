import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/foundation/constants.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/auth/login/login_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginViewModelProvider =
    StateNotifierProvider<LoginViewModel, AsyncValue<void>>((ref) {
  return LoginViewModel(getIt());
});

class LoginViewModel extends StateNotifier<AsyncValue<void>> {
  LoginViewModel(this._repository) : super(const AsyncData(null));

  final Repository _repository;

  /// デバッグモードオンオフ
  Future<bool?> toggleDebugMode() async {
    if (Constants.flavor == Flavor.prod) {
      return null;
    }

    final isDummyRoginApi = await _repository.debug.getDummyRoginApi();
    _repository.debug.setDummyRoginApi(!isDummyRoginApi);
    return !isDummyRoginApi;
  }

  Future<void> onTapLoginBtn(AuthType type) async {
    /// DEBUG
    // if (await _debugRepository.getDummyRoginApi()) {
    //   return await navigateToHome();
    // }
    final result = await loginWithSns(type);
    if (result && _repository.auth.isLogin) {
      await navigateToHome();
    }
  }

  /// ログイン
  /// [type] 各種ログイン方法
  Future<bool> loginWithSns(AuthType type) async {
    state = await AsyncValue.guard(() async {
      switch (type) {
        case AuthType.apple:
          return await _repository.auth.signInWithApple();
        case AuthType.google:
          return await _repository.auth.signInWithGoogle();
        case AuthType.twitter:
          return await _repository.auth.signInWithTwitter();
      }
    });
    return state is AsyncData;
  }

  Future navigateToHome() async {
    await getIt<AppRouter>().push(const HomeRouter());
  }
}
