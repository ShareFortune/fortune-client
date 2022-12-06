import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/auth/sign_in/sign_in_state.dart';

final signInViewModelProvider =
    StateNotifierProvider<SignInViewModel, AsyncValue<SignInState>>((ref) {
  return SignInViewModel(ref)..initialize();
});

class SignInViewModel extends StateNotifier<AsyncValue<SignInState>> {
  SignInViewModel(this._ref) : super(const AsyncValue<SignInState>.loading());

  final Ref _ref;

  /// Repository
  late final authRepository = _ref.watch(Repository.auth);

  initialize() => state = const AsyncValue.data(SignInState());

  signInWithGoogle() async {
    state = await AsyncValue.guard(() async {
      final result = await authRepository.signInWithGoogle();
      return SignInState(credential: result);
    });
  }

  signInWithApple() async {
    state = await AsyncValue.guard(() async {
      return const SignInState(credential: null);
    });
  }

  signInWithFacebook() {}
}
