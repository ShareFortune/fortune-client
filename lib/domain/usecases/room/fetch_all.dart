import 'package:fortune_client/domain/entities/models/room.dart';

import '../core/usecase.dart';

abstract class RoomFetchAllUseCase
    implements UseCase<RoomFetchAllParams, RoomFetchAllParams> {}

class RoomFetchAllParams {}

class RoomFetchAllResults {
  final List<Room> rooms;

  RoomFetchAllResults({required this.rooms});
}
