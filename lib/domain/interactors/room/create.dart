import 'package:fortune_client/domain/entities/models/new_room/new_room.dart';
import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/repositories/room.dart';
import 'package:fortune_client/domain/usecases/room/create.dart';

class RoomCreateInteractor implements RoomCreateUseCase {
  final AuthRepository _authRepository;
  final RoomRepository repository;

  RoomCreateInteractor(this.repository, this._authRepository);

  @override
  handle(RoomCreateParams params) async {
    ///
    /// バリデーション
    ///
    /// トークン取得
    ///
    /// 作成
    ///
    /// 作成したルームIDを返す
    ///
    try {
      final room = NewRoom(
        title: params.roomName,
        content: params.explanation,
        membersNum: params.membersNum,
        tags: params.tags,
        ageGroup: params.ageGroup,
        address: params.address,
      );

      final token = await _authRepository.getAuthenticationToken();

      final result = await repository.create(token, room: room);

      return RoomCreateResults(roomId: result);
    } catch (e) {
      rethrow;
    }
  }
}
