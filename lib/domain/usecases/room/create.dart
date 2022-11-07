import 'package:fortune_client/domain/entities/const/types.dart';
import 'package:fortune_client/domain/entities/enum/age_group.dart';
import 'package:fortune_client/domain/entities/models/address/address.dart';
import 'package:fortune_client/domain/entities/models/tag/tag.dart';
import 'package:fortune_client/domain/usecases/core/usecases/usecase.dart';

abstract class RoomCreateUseCase
    implements UseCase<RoomCreateResults, RoomCreateParams> {}

class RoomCreateParams {
  final String roomName;
  final int mamberNum;
  final AgeGroup ageGroup;
  final Address address;
  final String explanation;
  final List<Tag> tags;

  RoomCreateParams({
    required this.roomName,
    required this.mamberNum,
    required this.ageGroup,
    required this.address,
    required this.explanation,
    required this.tags,
  });
}

class RoomCreateResults {
  final RoomID roomID;

  RoomCreateResults({
    required this.roomID,
  });
}
