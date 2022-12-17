import 'package:auto_route/auto_route.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///
/// サインインしているかどうか
final authGuardProvider = Provider((ref) => AuthGuard(ref));

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this._ref);

  final Ref _ref;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (_ref.read(Repository.auth).isLogin) {
      resolver.next(true);
    } else {
      router.push(const LoginRoute());
    }
  }
}

///
/// プロフィールを作成済みかどうか
final checkIfMyProfileExistsProvider =
    Provider((ref) => CheckIfMyProfileExists(ref));

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
