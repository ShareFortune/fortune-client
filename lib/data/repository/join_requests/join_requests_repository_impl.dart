import 'package:fortune_client/data/datasource/remote/go/join_requests/join_requests_data_source.dart';
import 'package:fortune_client/data/repository/join_requests/join_requests_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class JoinRequestsRepositoryImpl implements JoinRequestsRepository {
  JoinRequestsRepositoryImpl(this._dataSource);

  final JoinRequestsDataSource _dataSource;

  @override
  Future<bool> send(String roomId) async {
    try {
      logger.i("[$runtimeType] send");
      await _dataSource.sendJoinRequest(roomId);
      return true;
    } catch (e) {
      logger.e(e);
      return false;
    }
  }
}
