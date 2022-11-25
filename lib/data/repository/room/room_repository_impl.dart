import 'package:fortune_client/data/datasource/remote/go/room/room_data_source.dart';
import 'package:fortune_client/data/model/room/room.dart';
import 'package:fortune_client/data/repository/room/room_repository.dart';

class RoomRepositoryImpl implements RoomRepository {
  final RoomDataSource _dataSource;

  RoomRepositoryImpl(this._dataSource);

  @override
  Future<String> create() {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<String> update() {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<List<Room>> fetchList() async {
    try {
      final result = await _dataSource.getList();
      return result.roomsEntity;
    } catch (e) {
      rethrow;
    }
  }
}
