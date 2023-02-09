import 'package:fortune_client/data/datasource/remote/go/favorites/favorites_data_source.dart';
import 'package:fortune_client/data/repository/favorites/favorites_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  final FavoritesDataSource _favoritesDataSource;

  FavoritesRepositoryImpl(this._favoritesDataSource);

  @override
  Future<bool> register(String roomId) async {
    try {
      logger.i("[$runtimeType] register");
      final result = await _favoritesDataSource.register(roomId);
      return result.id.isNotEmpty;
    } catch (e) {
      logger.e(e);
      return false;
    }
  }

  @override
  Future<bool> unregister(String roomId) async {
    try {
      logger.i("[$runtimeType] unregister");
      final result = await _favoritesDataSource.unregister(roomId);
      return result.id.isNotEmpty;
    } catch (e) {
      logger.e(e);
      return false;
    }
  }
}
