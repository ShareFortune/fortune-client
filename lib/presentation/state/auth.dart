import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/domain/domain_providers.dart';
import 'package:fortune_client/domain/interactors/auth/login.dart';
import 'package:fortune_client/domain/usecases/auth/login.dart';
import 'package:fortune_client/domain/usecases/core/usecases/usecase.dart';

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AsyncValue<bool>>((ref) {
  return AuthNotifier(
    ref: ref,
    loginUseCase: ref.watch(loginUseCaseProvider),
  );
});

class AuthNotifier extends StateNotifier<AsyncValue<bool>> {
  AuthNotifier({
    required this.ref,
    required this.loginUseCase,
  }) : super(const AsyncLoading());

  final Ref ref;
  final LoginUseCase loginUseCase;

  login() async {
    state = await AsyncValue.guard(() async {
      final result = await loginUseCase.handle(NoParams());
      return result.isLogin;
    });
  }

  logout() {}
}
