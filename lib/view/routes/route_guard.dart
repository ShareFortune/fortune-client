import 'package:auto_route/auto_route.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';

///
/// サインインしているかどうか
class AuthGuard extends AutoRouteGuard {
  AuthGuard(this._repository);

  final Repository _repository;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (_repository.auth.isLogin) {
      resolver.next(true);
    } else {
      router.push(const LoginRoute());
    }
  }
}

///
/// プロフィールを作成済みかどうか
class CheckIfMyProfileExists extends AutoRouteGuard {
  CheckIfMyProfileExists(this._repository);

  final Repository _repository;

  @override
  void onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (await _repository.profile.isCreated()) {
      resolver.next(true);
    } else {
      router.push(const CreateProfileRoute());
    }
  }
}
