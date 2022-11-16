abstract class AuthRepository {
  Future<String> getAuthenticationToken();
  Future<bool> getCredentials();
  Future<bool> signInWithGoogle();
  Future<bool> logout();
}
