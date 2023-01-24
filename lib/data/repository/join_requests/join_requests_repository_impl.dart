import 'package:fortune_client/data/datasource/remote/go/join_requests/join_requests_data_source.dart';
import 'package:fortune_client/data/model/join_requests/join_requests.dart';
import 'package:fortune_client/data/repository/join_requests/join_requests_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class JoinRequestsRepositoryImpl implements JoinRequestsRepository {
  JoinRequestsRepositoryImpl(this._dataSource);

  final JoinRequestsDataSource _dataSource;

  @override
  Future<bool> request(String roomId) async {
    try {
      logger.i("[$runtimeType] send");
      final result = await _dataSource.sendJoinRequest(roomId);
      return result.id.isNotEmpty;
    } catch (e) {
      logger.e(e);
      return false;
    }
  }

  @override
  Future<List<JoinRequest>> getJoinRequests(String roomId) async {
    const joinRequest = JoinRequest(name: "name", userId: "", userImageUrl: "");
    return [
      joinRequest.copyWith(name: "test1"),
      joinRequest.copyWith(name: "test2"),
      joinRequest.copyWith(name: "test3"),
    ];
  }
}
