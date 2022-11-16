import 'package:fortune_client/data/model/room/room.dart';

abstract class RoomRepository {
  Future<String> create();
  Future<String> update();
  Future<List<Room>> fetchList();
}
