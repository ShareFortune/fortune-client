import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortune_client/data/datasource/remote/firebase/auth_method_interface.dart';

class FakeAuthMethodInterface implements AuthMethodInterface {
  @override
  Future<OAuthCredential?> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
