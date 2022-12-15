import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';

final authGuardProvider = Provider((ref) => AuthGuard(ref));
final checkIfMyProfileExistsProvider =
    Provider((ref) => CheckIfMyProfileExists(ref));

///
/// サインインしているかどうか
class AuthGuard extends AutoRouteGuard {
  AuthGuard(this._ref);

  final Ref _ref;
  late final authRepository = _ref.watch(Repository.auth);

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (authRepository.isSignIn) {
      resolver.next(true);
    } else {
      router.push(const LoginRoute());
    }
  }
}

///
/// プロフィールを作成済みかどうか
class CheckIfMyProfileExists extends AutoRouteGuard {
  CheckIfMyProfileExists(this._ref);

  final Ref _ref;
  late final profileRepository = _ref.watch(Repository.profile);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (profileRepository.isCreated) {
      resolver.next(true);
    } else {
      router.push(ProfileCreateRoute());
    }
  }
}
