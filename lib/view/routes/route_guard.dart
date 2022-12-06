import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';

final authGuardProvider = Provider((ref) => AuthGuard(ref));

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this._ref);

  final Ref _ref;
  late final authRepository = _ref.watch(Repository.auth);

  _isAuthenticated() => authRepository.isSignIn;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final isAuthenticated = _isAuthenticated();
    if (isAuthenticated) {
      resolver.next(true);
    } else {
      router.push(SignInRoute(onResult: (result) {
        if (result) resolver.next(result);
      }));
    }
  }
}
