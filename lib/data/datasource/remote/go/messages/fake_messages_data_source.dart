import 'package:fortune_client/data/datasource/remote/go/messages/messages_data_source.dart';
import 'package:fortune_client/data/model/messages/get_v1_message_rooms_id_messages/get_v1_message_rooms_id_messages.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_utils.dart';

class FakeMessagesDataSource implements MessagesDataSource {
  @override
  Future<GetV1MessageRoomsIdMessagesResponse> get(
    String messageRoomId, {
    String? nextToken,
    int? perPage,
  }) async {
    return GetV1MessageRoomsIdMessagesResponse.fromJson(
      await JsonUtils.load(Assets.stub.getV1MessageRoomsIdMessagesResponse),
    );
  }

  @override
  Future<void> send(String messageRoomId, Map<String, dynamic> body) async {
    throw UnimplementedError();
  }
}
