import '../const/types.dart';
import '../enum/age_group.dart';
import '../enum/room_status.dart';

class Room {
  final RoomID id;
  final String name;
  final EventHeldAt holdAt;
  final UserID hostUserId;
  final List<UserID> memberIDs;
  final int membersNumber;
  final AgeGroup ageGroup;
  final EventID eventID;
  final List<TagID> tagIds;
  final RoomStatus roomStatus;
  final DateTime openedAt;
  final DateTime closedAt;

  Room({
    required this.id,
    required this.name,
    required this.holdAt,
    required this.hostUserId,
    required this.memberIDs,
    required this.membersNumber,
    required this.ageGroup,
    required this.eventID,
    required this.tagIds,
    required this.roomStatus,
    required this.openedAt,
    required this.closedAt,
  });
}
