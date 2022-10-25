import 'package:fortune_client/domain/entities/enum/room_status.dart';

import 'package:fortune_client/domain/repositories/room.dart';
import 'package:fortune_client/domain/usecases/core/error/failures.dart';
import 'package:fortune_client/domain/usecases/room/create.dart';
import 'package:fpdart/fpdart.dart';

class RoomCreateInteractor implements RoomCreateUseCase {
  final RoomRepository repository;

  RoomCreateInteractor(this.repository);

  @override
  Future<Either<Failure, RoomCreateResults>> handle(
      RoomCreateParams params) async {
    // Room(
    //   id: null,
    //   name: params.roomName,
    //   roomStatus: RoomStatus.closed,
    //   createdAt: DateTime.now(),
    //   hostUser: hostUser,
    //   members: [],
    //   tags: params.tags,
    // );

    final newRoomID = await repository.create({});
    return newRoomID.match<Future<Either<Failure, RoomCreateResults>>>(
      (l) async => Either.left(l),
      (r) async {
        return Either.of(RoomCreateResults(roomID: r));
      },
    );
  }
}
