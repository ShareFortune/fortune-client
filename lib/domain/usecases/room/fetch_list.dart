import 'package:fortune_client/domain/entities/models/room/room.dart';

import '../core/usecases/usecase.dart';

abstract class RoomFetchAllUseCase
    implements UseCase<RoomFetchAllParams, RoomFetchAllResults> {}

class RoomFetchAllParams {}

class RoomFetchAllResults {
  final List<Room> rooms;

  RoomFetchAllResults({
    required this.rooms,
  });
}
