import 'package:fortune_client/data/datasource/remote/go/favorites/favorites_data_source.dart';
import 'package:fortune_client/data/model/rooms/rooms_response/rooms_response.dart';

class FakeFavoritesDataSource implements FavoritesDataSource {
  @override
  Future<RoomIdResponse> register(String id) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<RoomIdResponse> unregister(String id) {
    // TODO: implement unregister
    throw UnimplementedError();
  }
}
