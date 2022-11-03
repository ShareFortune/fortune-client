import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/domain/domain_providers.dart';
import 'package:fortune_client/domain/usecases/auth/login.dart';
import 'package:fortune_client/domain/usecases/core/usecases/usecase.dart';

final signInViewModelProvider =
    StateNotifierProvider<SignInViewModel, AsyncValue<bool>>((ref) {
  return SignInViewModel(ref: ref);
});

class SignInViewModel extends StateNotifier<AsyncValue<bool>> {
  SignInViewModel({required Ref ref})
      : _ref = ref,
        super(const AsyncLoading());

  final Ref _ref;
  late final _loginUseCase = _ref.watch(loginUseCaseProvider);

  login() async {
    state = await AsyncValue.guard(() async {
      final result = await _loginUseCase.handle(NoParams());
      return result.isLogin;
    });
  }

  signInWithApple() {}
  signInWithGoogle() {}
  signInWithFacebook() {}
}
