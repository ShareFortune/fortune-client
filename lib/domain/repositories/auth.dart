abstract class AuthRepository {
  Future<bool> getCredentials();
  Future<bool> signInWithGoogle();
  Future<bool> logout();
}
