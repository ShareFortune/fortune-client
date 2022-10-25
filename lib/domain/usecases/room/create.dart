import 'package:fortune_client/domain/entities/const/types.dart';
import 'package:fortune_client/domain/entities/enum/age_group.dart';
import 'package:fortune_client/domain/entities/models/tag.dart';

import '../../entities/models/room.dart';
import '../core/usecase.dart';

abstract class RoomCreateUseCase
    implements UseCase<RoomCreateParams, RoomCreateResults> {}

class RoomCreateParams {
  final String roomName;
  final int mamberNum;
  final AgeGroup ageGroup;
  final String address;
  final String explanation;
  final List<Tag> tag;

  RoomCreateParams({
    required this.roomName,
    required this.mamberNum,
    required this.ageGroup,
    required this.address,
    required this.explanation,
    required this.tag,
  });
}

class RoomCreateResults {
  // final Room createdRoom;
  final RoomID roomID;

  RoomCreateResults({
    required this.roomID,
  });
}
