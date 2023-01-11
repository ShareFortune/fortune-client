import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/model/host_room/host_room.dart';
import 'package:fortune_client/data/model/room_detail/room_detail.dart';
import 'package:fortune_client/data/model/rooms/rooms.dart';
import 'package:fortune_client/data/repository/room/room_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class RoomRepositoryImpl implements RoomRepository {
  final RoomsDataSource _roomsDataSource;

  RoomRepositoryImpl(this._roomsDataSource);

  @override
  Future<String> create() {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<String> update() {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<List<Room>> search() async {
    try {
      logger.i("$runtimeType fetchList");
      final result = await _roomsDataSource.search(perPage: 10);
      print(result);
      return result.data;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<List<HostRoom>> fetchListHost() async {
    try {
      final result = await _roomsDataSource.getHostList();
      return result.roomsEntity;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RoomDetail> fetchDetail() async {
    try {
      final _result = await _roomsDataSource
          .getDetail("df08f3f8-1f32-477d-947c-4bc8b6ae4f58");
      print(_result);
      return _result;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
