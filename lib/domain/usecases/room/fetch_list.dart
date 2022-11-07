import 'package:fortune_client/domain/entities/models/room/room.dart';

import '../core/usecases/usecase.dart';

abstract class RoomFetchListUseCase
    implements UseCase<RoomFetchListResults, RoomFetchListParams> {}

class RoomFetchListParams {}

class RoomFetchListResults {
  final List<Room> rooms;

  RoomFetchListResults({
    required this.rooms,
  });
}
