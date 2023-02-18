import 'package:fortune_client/data/model/enum/auth_type.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/data/repository/debug/debug_repository.dart';
import 'package:fortune_client/foundation/constants.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginViewModelProvider =
    StateNotifierProvider<LoginViewModel, AsyncValue<void>>((ref) {
  return LoginViewModel(getIt(), getIt());
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

  Future<void> onTapLoginBtn(AuthType type) async {
    final result = await loginWithSns(type);
    if (result && _authRepository.isLogin) {
      await navigateToHome();
    }
  }

  /// ログイン
  /// [type] 各種ログイン方法
  Future<bool> loginWithSns(AuthType type) async {
    state = await AsyncValue.guard(() async {
      switch (type) {
        case AuthType.apple:
          final user = await _authRepository.signIn(AuthType.apple);
          print(user);
          return;
        case AuthType.google:
          return await _authRepository.signInWithGoogle();
        case AuthType.twitter:
          return await _authRepository.signInWithTwitter();
      }
    });
    return state is AsyncData;
  }

  Future navigateToHome() async {
    await getIt<AppRouter>().push(const HomeRouter());
  }
}
