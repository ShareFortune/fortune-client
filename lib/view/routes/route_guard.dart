// import 'package:auto_route/auto_route.dart';
// import 'package:fortune_client/data/repository/repository.dart';
// import 'package:fortune_client/view/routes/app_router.gr.dart';

// ///
// /// サインインしているかどうか
// class AuthGuard extends AutoRouteGuard {
//   @override
//   Future<void> onNavigation(
//     NavigationResolver resolver,
//     StackRouter router,
//   ) async {
//     Repository.auth.isLogin
//         ? resolver.next(true)
//         : router.push(const LoginRoute());
//   }
// }

// ///
// /// プロフィールを作成済みかどうか
// class CheckIfMyProfileExists extends AutoRouteGuard {
//   @override
//   void onNavigation(
//     NavigationResolver resolver,
//     StackRouter router,
//   ) async {
//     await Repository.profile.isCreated()
//         ? resolver.next(true)
//         : router.push(const CreateProfileRoute());
//   }
// }
