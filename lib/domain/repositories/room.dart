import 'package:fortune_client/domain/entities/const/types.dart';
import 'package:fortune_client/domain/entities/enum/age_group.dart';
import 'package:fortune_client/domain/entities/models/address/address.dart';
import 'package:fortune_client/domain/entities/models/room/room.dart';
import 'package:fortune_client/domain/entities/models/tag/tag.dart';

abstract class RoomRepository {
  Future<RoomID> create({
    required String roomName,
    required int membersNum,
    required AgeGroup ageGroup,
    required Address address,
    required String explanation,
    required List<Tag> tags,
  });
  Future<RoomID> update(Room room);
}
