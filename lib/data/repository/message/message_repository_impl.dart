import 'package:fortune_client/data/datasource/remote/go/messages/messages_data_source.dart';
import 'package:fortune_client/data/model/core/base/message/message.dart';
import 'package:fortune_client/data/model/messages/post_v1_message_rooms_id_messages/post_v1_message_rooms_id_messages.dart';
import 'package:fortune_client/data/repository/message/message_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class MessagesRepositoryImpl implements MessagesRepository {
  MessagesRepositoryImpl(this._dataSource);

  final MessagesDataSource _dataSource;

  @override
  Future<void> sendMessage({
    required String messageRoomId,
    required String text,
  }) async {
    try {
      await _dataSource.sendText(
        messageRoomId,
        PostV1MessageRoomsIdMessagesRequest(text: text).toJson(),
      );
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<List<Message>> getMessages(String messageRoomId) async {
    try {
      final result = await _dataSource.get(messageRoomId);
      return result.data;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
