import 'package:fortune_client/domain/entities/models/room.dart';

import '../../entities/enum/age_group.dart';
import '../core/usecase.dart';

abstract class RoomUpdateUseCase
    implements UseCase<RoomUpdateParams, RoomUpdateParams> {}

class RoomUpdateParams {
  final String roomName;
  final int mamberNum;
  final AgeGroup ageGroup;
  final String address;
  final String explanation;
  final List<String> tag;

  RoomUpdateParams({
    required this.roomName,
    required this.mamberNum,
    required this.ageGroup,
    required this.address,
    required this.explanation,
    required this.tag,
  });
}

class RoomUpdateResults {
  final Room updatedRoom;

  RoomUpdateResults({
    required this.updatedRoom,
  });
}
