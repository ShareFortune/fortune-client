import 'package:fortune_client/data/model/join_requests/join_requests.dart';

abstract class JoinRequestsRepository {
  /// 参加申請
  Future<bool> request(String roomId);

  /// 参加申請一覧取得
  Future<List<JoinRequest>> getJoinRequests(String roomId);
}
