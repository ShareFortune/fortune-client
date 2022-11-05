import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/domain/domain_providers.dart';
import 'package:fortune_client/domain/usecases/core/usecases/usecase.dart';
import 'package:fortune_client/view/pages/auth/sign_in/sign_in_state.dart';

final signInViewModelProvider =
    StateNotifierProvider<SignInViewModel, AsyncValue<SignInState>>((ref) {
  return SignInViewModel(ref)..initialize();
});

class SignInViewModel extends StateNotifier<AsyncValue<SignInState>> {
  SignInViewModel(this._ref) : super(const AsyncValue<SignInState>.loading());

  final Ref _ref;
  late final _loginUseCase = _ref.watch(loginUseCaseProvider);

  initialize() => state = const AsyncValue.data(SignInState());

  login() async {
    state = await AsyncValue.guard(() async {
      final result = await _loginUseCase.handle(NoParams());
      return SignInState(isSignIn: result.isLogin);
    });
  }

  signInWithApple() async {
    state = await AsyncValue.guard(() async {
      return const SignInState(isSignIn: true);
    });
  }

  signInWithGoogle() {}
  signInWithFacebook() {}
}
