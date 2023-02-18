import 'package:fortune_client/data/datasource/remote/firebase/auth_method_interface.dart';
import 'package:fortune_client/data/model/base/app_user/app_user.dart';

class FakeAuthMethodInterface implements AuthMethodInterface {
  @override
  Future<AppUser?> getLoginResult() {
    // TODO: implement getLoginResult
    throw UnimplementedError();
  }

  @override
  Future<AppUser?> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
