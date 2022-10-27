abstract class AuthRepository {
  Future<bool> signInWithGoogle();
  Future<bool> logout();
}
