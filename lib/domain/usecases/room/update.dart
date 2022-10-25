import 'package:fortune_client/domain/entities/const/types.dart';
import 'package:fortune_client/domain/entities/models/tag/tag.dart';

import '../../entities/enum/age_group.dart';
import '../core/usecase.dart';

abstract class RoomUpdateUseCase
    implements UseCase<RoomUpdateParams, RoomUpdateResults> {}

class RoomUpdateParams {
  final String roomName;
  final int mamberNum;
  final AgeGroup ageGroup;
  final String address;
  final String explanation;
  final List<Tag> tag;

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
  final RoomID roomID;

  RoomUpdateResults({
    required this.roomID,
  });
}
