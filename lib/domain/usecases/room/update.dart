import 'package:fortune_client/domain/entities/const/types.dart';
import 'package:fortune_client/domain/entities/models/address/address.dart';
import 'package:fortune_client/domain/entities/models/tag/tag.dart';

import '../../entities/enum/age_group.dart';
import '../core/usecases/usecase.dart';

abstract class RoomUpdateUseCase
    implements UseCase<RoomUpdateResults, RoomUpdateParams> {}

class RoomUpdateParams {
  final String roomName;
  final int mamberNum;
  final AgeGroup ageGroup;
  final Address address;
  final String explanation;
  final List<Tag> tags;

  RoomUpdateParams({
    required this.roomName,
    required this.mamberNum,
    required this.ageGroup,
    required this.address,
    required this.explanation,
    required this.tags,
  });
}

class RoomUpdateResults {
  final RoomID roomID;

  RoomUpdateResults({
    required this.roomID,
  });
}
