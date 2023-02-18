import 'package:fortune_client/data/model/base/app_user/app_user.dart';

abstract class AuthMethodInterface {
  getLoginResult();
  Future<AppUser?> login();
  logout();
}
