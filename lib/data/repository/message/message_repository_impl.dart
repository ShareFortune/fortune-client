import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fortune_client/data/datasource/remote/go/message_rooms/message_rooms_data_source.dart';
import 'package:fortune_client/data/model/base/message_room/messege_room.dart';
import 'package:fortune_client/data/repository/message/message_repository.dart';

class MessagesRepositoryImpl implements MessagesRepository {
  MessagesRepositoryImpl(this._dataSource);

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
    final result = await _dataSource.getMessageRoomsHost();
    return result.data;
  }
}
