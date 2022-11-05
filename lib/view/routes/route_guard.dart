import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/routes/app_router.dart';

final authGuardProvider = Provider((ref) => AuthGuard(ref));

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this.ref);

  final Ref ref;

  _isAuthenticated() async {
    return false;
  }

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final isAuthenticated = await _isAuthenticated();
    if (isAuthenticated) {
      resolver.next(true);
    } else {
      router.push(SignInRoute(onResult: (result) {
        if (result) resolver.next(result);
      }));
    }
  }
}
