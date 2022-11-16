import 'package:fortune_client/domain/entities/const/types.dart';
import 'package:fortune_client/domain/entities/models/new_room/new_room.dart';
import 'package:fortune_client/domain/entities/models/room/room.dart';

abstract class RoomRepository {
  Future<RoomID> create(
    String token, {
    required NewRoom room,
    // required String roomName,
    // required int membersNum,
    // required AgeGroup ageGroup,
    // required Address address,
    // required String explanation,
    // required List<Tag> tags,
  });
  Future<RoomID> update(Room room);
}
