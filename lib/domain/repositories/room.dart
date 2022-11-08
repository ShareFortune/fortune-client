import 'package:fortune_client/domain/entities/const/types.dart';
import 'package:fortune_client/domain/entities/models/room/room.dart';

abstract class RoomRepository {
  Future<RoomID> create(Room room);
  Future<RoomID> update(Room room);
}
