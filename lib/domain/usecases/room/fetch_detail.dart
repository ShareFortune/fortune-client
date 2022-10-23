import '../core/usecase.dart';

abstract class RoomFetchDetailUseCase
    implements UseCase<RoomFetchDetailParams, RoomFetchDetailParams> {}

class RoomFetchDetailParams {
  final String id;

  RoomFetchDetailParams({
    required this.id,
  });
}

class RoomFetchDetailResults {
  final List<Room> rooms;

  RoomFetchDetailResults({
    required this.rooms,
  });
}
