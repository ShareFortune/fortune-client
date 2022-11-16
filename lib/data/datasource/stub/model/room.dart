import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/data/model/room/room.dart';

import 'host.dart';
import 'member.dart';
import 'tag.dart';

const tId = "id";
const tName = "name";
const tHostUser = "name";
const tRoomStatus = RoomStatus.opend;
final tCreatedAt = DateTime.now();

final tRoom = Room(
  id: tId,
  name: tName,
  hostUser: tHost,
  roomStatus: tRoomStatus,
  createdAt: tCreatedAt,
  members: [tMember, tMember, tMember, tMember],
  tags: [tTag, tTag, tTag],
);
