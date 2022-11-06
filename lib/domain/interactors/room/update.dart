import 'package:fortune_client/domain/entities/enum/gender.dart';
import 'package:fortune_client/domain/entities/enum/room_status.dart';
import 'package:fortune_client/domain/entities/models/member/member.dart';
import 'package:fortune_client/domain/entities/models/room/room.dart';
import 'package:fortune_client/domain/repositories/room.dart';
import 'package:fortune_client/domain/usecases/room/update.dart';

class RoomUpdateInteractor implements RoomUpdateUseCase {
  final RoomRepository repository;

  RoomUpdateInteractor(this.repository);

  @override
  handle(RoomUpdateParams params) async {
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
      final result = await repository.update(newRoom);
      return RoomUpdateResults(roomID: result);
    } catch (e) {
      rethrow;
    }
  }
}
