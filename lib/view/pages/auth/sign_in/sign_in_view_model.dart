import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/domain/usecases/auth/login.dart';
import 'package:fortune_client/core/usecases/usecase.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/auth/sign_in/sign_in_state.dart';

final signInViewModelProvider =
    StateNotifierProvider<SignInViewModel, AsyncValue<SignInState>>((ref) {
  return SignInViewModel(ref.watch(loginUseCaseProvider))..initialize();
});

class SignInViewModel extends StateNotifier<AsyncValue<SignInState>> {
  SignInViewModel(this._useCase)
      : super(const AsyncValue<SignInState>.loading());

  final LoginUseCase _useCase;

  initialize() => state = const AsyncValue.data(SignInState());

  signInWithGoogle() async {
    state = await AsyncValue.guard(() async {
      final result = await _useCase.handle(NoParams());
      return SignInState(isSignIn: result.isLogin);
    });
  }

  signInWithApple() async {
    state = await AsyncValue.guard(() async {
      return const SignInState(isSignIn: true);
    });
  }

  signInWithFacebook() {}
}
