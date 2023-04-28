import 'package:fortune_client/data/datasource/remote/go/message_rooms/message_rooms_data_source.dart';
import 'package:fortune_client/data/model/messages/message_rooms_response/message_rooms_response.dart';
import 'package:fortune_client/data/repository/message_rooms/message_rooms_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class MessageRoomsRepositoryImpl implements MessageRoomsRepository {
  MessageRoomsRepositoryImpl(this._dataSource);

  final MessageRoomsDataSource _dataSource;

  @override
  Future<String> create() {
    throw UnimplementedError();
  }

  @override
  Future<String> update() {
    throw UnimplementedError();
  }

  @override
  Future<List<MessageRoom>> fetchHost() async {
    try {
      final result = await _dataSource.getMessageRoomsHost();
      return result.messageRooms;
    } catch (e) {
      logger.e(e);
      return [];
    }
  }

  @override
  Future<List<MessageRoom>> fetchGuest() async {
    try {
      final result = await _dataSource.getMessageRoomsGuest();
      return result.messageRooms;
    } catch (e) {
      logger.e(e);
      return [];
    }
  }
}
