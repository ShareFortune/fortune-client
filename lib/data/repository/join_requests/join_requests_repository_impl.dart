import 'package:fortune_client/data/datasource/remote/go/join_requests/join_requests_data_source.dart';
import 'package:fortune_client/data/model/join_requests/room_join_request/join_request.dart';
import 'package:fortune_client/data/repository/join_requests/join_requests_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class JoinRequestsRepositoryImpl implements JoinRequestsRepository {
  JoinRequestsRepositoryImpl(this._joinRequestsDataSource);

  final JoinRequestsDataSource _joinRequestsDataSource;

  @override
  Future<bool> request(String roomId) async {
    try {
      logger.i("[$runtimeType] send");
      final result = await _joinRequestsDataSource.sendJoinRequest(roomId);
      return result.id.isNotEmpty;
    } catch (e) {
      logger.e(e);
      return false;
    }
  }

  @override
  Future<List<JoinRequest>> getJoinRequests(String roomId) async {
    try {
      logger.i("[$runtimeType] getJoinRequests");
      final result = await _joinRequestsDataSource.getJoinRequest(roomId);
      return result.joinRequests;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<bool> accept(String requestId) async {
    try {
      print(requestId);
      logger.i("[$runtimeType] accept");
      final result = await _joinRequestsDataSource.accept(requestId);
      return result.id == requestId;
    } catch (e) {
      logger.e(e);
      return false;
    }
  }

  @override
  Future<bool> reject(String requestId) async {
    try {
      logger.i("[$runtimeType] reject");
      final result = await _joinRequestsDataSource.reject(requestId);
      return result.id == requestId;
    } catch (e) {
      logger.e(e);
      return false;
    }
  }
}
