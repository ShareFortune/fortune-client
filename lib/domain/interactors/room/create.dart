import 'package:fortune_client/domain/entities/enum/gender.dart';
import 'package:fortune_client/domain/entities/enum/room_status.dart';
import 'package:fortune_client/domain/entities/models/member/member.dart';
import 'package:fortune_client/domain/entities/models/room/room.dart';
import 'package:fortune_client/domain/repositories/room.dart';
import 'package:fortune_client/domain/usecases/room/create.dart';

class RoomCreateInteractor implements RoomCreateUseCase {
  final RoomRepository repository;

  RoomCreateInteractor(this.repository);

  @override
  handle(RoomCreateParams params) async {
    /// ホストユーザーのデータを取得

    try {
      final result = await repository.create(
        roomName: params.roomName,
        membersNum: params.membersNum,
        ageGroup: params.ageGroup,
        address: params.address,
        explanation: params.explanation,
        tags: params.tags,
      );
      return RoomCreateResults(roomID: result);
    } catch (e) {
      rethrow;
    }
  }
}
