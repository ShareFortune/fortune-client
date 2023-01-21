import 'package:fortune_client/data/datasource/remote/go/join_requests/join_requests_data_source.dart';
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
}
