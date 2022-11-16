import 'package:fortune_client/data/datasource/remote/go/room_data_source.dart';
import 'package:fortune_client/data/model/room/room.dart';
import 'package:fortune_client/data/datasource/stub/model/room.dart';

class StubRoomDataSource implements RoomDataSource {
  @override
  Future<List<Room>> getList() async {
    final List<Room> rooms = [];
    for (var i = 0; i < 10; i++) {
      rooms.add(tRoom);
    }
    return rooms;
  }
}
