import 'package:auto_route/auto_route.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';

///
/// サインインしているかどうか
// final authGuardProvider = Provider((ref) => AuthGuard(ref));

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (_authRepository.isLogin()) {
      resolver.next(true);
    } else {
      router.push(const LoginRoute());
    }
  }
}

///
/// プロフィールを作成済みかどうか
// final checkIfMyProfileExistsProvider =
//     Provider((ref) => CheckIfMyProfileExists(ref));

class CheckIfMyProfileExists extends AutoRouteGuard {
  CheckIfMyProfileExists(this._profileRepository);

  final ProfileRepository _profileRepository;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (_profileRepository.isCreated) {
      resolver.next(true);
    } else {
      router.push(const ProfileCreateRoute());
    }
  }
}
