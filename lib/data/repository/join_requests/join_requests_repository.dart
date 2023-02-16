import 'package:fortune_client/data/model/core/base/room_join_request/room_join_request.dart';

abstract class JoinRequestsRepository {
  /// 参加申請
  Future<bool> request(String roomId);

  /// 参加申請を許可
  /// [requestId] 許可するユーザーからのリクエストID
  Future<bool> accept(String requestId);

  /// 参加申請を拒否
  /// [requestId] 拒否するユーザーからのリクエストID
  Future<bool> reject(String requestId);

  /// 参加申請一覧取得
  /// [roomId] 参加申請を受信したルームID
  Future<List<RoomJoinRequest>> getJoinRequests(String roomId);
}
