abstract class FavoritesRepository {
  Future<bool> register(String roomId);
  Future<bool> unregister(String roomId);
}
