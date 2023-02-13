import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/foundation/constants.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/auth/login/login_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginViewModelProvider =
    StateNotifierProvider<LoginViewModel, AsyncValue<void>>((ref) {
  return LoginViewModel();
});

class LoginViewModel extends StateNotifier<AsyncValue<void>> {
  LoginViewModel() : super(const AsyncData(null));

  /// デバッグモードオンオフ
  Future<bool?> toggleDebugMode() async {
    if (Constants.flavor == Flavor.prod) {
      return null;
    }

    final isDummyRoginApi = await Repository.debug.getDummyRoginApi();
    Repository.debug.setDummyRoginApi(!isDummyRoginApi);
    return !isDummyRoginApi;
  }

  Future<void> onTapLoginBtn(AuthType type) async {
    /// DEBUG
    // if (await _debugRepository.getDummyRoginApi()) {
    //   return await navigateToHome();
    // }
    final result = await loginWithSns(type);
    if (result && Repository.auth.isLogin) {
      await navigateToHome();
    }
  }

  /// ログイン
  /// [type] 各種ログイン方法
  Future<bool> loginWithSns(AuthType type) async {
    state = await AsyncValue.guard(() async {
      switch (type) {
        case AuthType.apple:
          return await Repository.auth.signInWithApple();
        case AuthType.google:
          return await Repository.auth.signInWithGoogle();
        case AuthType.twitter:
          return await Repository.auth.signInWithTwitter();
      }
    });
    return state is AsyncData;
  }

  Future navigateToHome() async {
    await getIt<AppRouter>().push(const HomeRouter());
  }
}
