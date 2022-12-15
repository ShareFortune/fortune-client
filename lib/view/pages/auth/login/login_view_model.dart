import 'package:fortune_client/view/pages/auth/login/components/auth_button.dart';
import 'package:fortune_client/view/pages/auth/login/login_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginViewModelProvider =
    StateNotifierProvider<LoginViewModel, LoginState>((ref) {
  return LoginViewModel();
});

class LoginViewModel extends StateNotifier<LoginState> {
  LoginViewModel() : super(LoginState());

  loginWithSns(AuthType type) {}
}
