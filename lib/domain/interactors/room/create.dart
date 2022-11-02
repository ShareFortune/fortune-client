import 'package:fortune_client/domain/entities/enum/gender.dart';
import 'package:fortune_client/domain/entities/enum/room_status.dart';
import 'package:fortune_client/domain/entities/models/member/member.dart';
import 'package:fortune_client/domain/entities/models/room/room.dart';
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
    const host = Member(
      id: "id",
      name: "name",
      gender: Gender.man,
      mainImageUrl: "mainImageUrl",
    );

    final newRoom = Room(
      id: null,
      name: params.roomName,
      roomStatus: RoomStatus.closed,
      createdAt: DateTime.now(),
      hostUser: host,
      members: [],
      tags: params.tags,
    );

    try {
      final result = await repository.create(newRoom);
      return Either.of(RoomCreateResults(roomID: result));
    } on Failure catch (e) {
      return Either.left(e);
    }
  }
}
