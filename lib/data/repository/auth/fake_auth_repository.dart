import 'package:fortune_client/data/repository/auth/auth_repository.dart';

class FakeAuthRepository implements AuthRepository {
  FakeAuthRepository._interal();
  static final FakeAuthRepository _instance = FakeAuthRepository._interal();
  factory FakeAuthRepository() {
    return _instance;
  }

  static bool automaticLogin = false;

  bool _loginState = false;

  @override
  String get firebaseId => throw UnimplementedError();

  @override
  bool get isLogin => automaticLogin ? _loginState : automaticLogin;

  @override
  Future<String> idToken() {
    throw UnimplementedError();
  }

  @override
  Future<void> logout() async {
    _loginState = false;
  }

  @override
  Future<void> signInWithApple() async {
    print("object");
    _loginState = true;
  }

  @override
  Future<void> signInWithGoogle() async {
    _loginState = true;
  }

  @override
  Future<void> signInWithTwitter() async {
    _loginState = true;
  }
}
