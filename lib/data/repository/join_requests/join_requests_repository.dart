import 'package:fortune_client/data/model/base/room_join_request/room_join_request.dart';

abstract class JoinRequestsRepository {
  /// 参加申請
  Future<bool> request(String roomId);

  /// 参加申請一覧取得
  /// [roomId] 参加申請を受信したルームID
  Future<List<RoomJoinRequest>> getJoinRequests(String roomId);
}
