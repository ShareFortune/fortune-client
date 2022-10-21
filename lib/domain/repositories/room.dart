import 'package:fortune_client/domain/entities/const/types.dart';
import 'package:fortune_client/domain/entities/models/room.dart';

abstract class RoomRepository {
  create(Room room);
  fetch(RoomID id);
  Future<List<Room>> fetchAll();
  Future update(Room room);
}
