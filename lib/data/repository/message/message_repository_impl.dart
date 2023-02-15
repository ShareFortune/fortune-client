import 'package:fortune_client/data/datasource/remote/go/messages/messages_data_source.dart';
import 'package:fortune_client/data/model/base/message/message.dart';
import 'package:fortune_client/data/repository/message/message_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class MessagesRepositoryImpl implements MessagesRepository {
  MessagesRepositoryImpl(this._dataSource);

  final MessagesDataSource _dataSource;

  @override
  sendMessage() {
    // TODO: implement sendMessage
    throw UnimplementedError();
  }

  @override
  Future<List<Message>> getMessages() async {
    try {
      final result = await _dataSource.get("");
      return result.data;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
