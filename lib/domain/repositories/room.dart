import 'package:fortune_client/domain/entities/const/types.dart';
import 'package:fortune_client/domain/entities/models/room/room.dart';
import 'package:fortune_client/domain/usecases/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract class RoomRepository {
  Future<RoomID> create(Room room);
  Future<RoomID> update(Room room);
}
