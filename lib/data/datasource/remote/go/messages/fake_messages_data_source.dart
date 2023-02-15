import 'package:fortune_client/data/datasource/remote/go/messages/messages_data_source.dart';
import 'package:fortune_client/data/model/messages/get_v1_message_rooms_id_messages_response/get_v1_message_rooms_id_messages_response.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_loader.dart';

class FakeMessagesDataSource implements MessagesDataSource {
  @override
  Future<void> send(String messageRoomId) {
    // TODO: implement send
    throw UnimplementedError();
  }

  @override
  Future<GetV1MessageRoomsIdMessagesResponse> get(
    String messageRoomId, {
    String? nextToken,
    int? perPage,
  }) async {
    return GetV1MessageRoomsIdMessagesResponse.fromJson(
      await JsonLoader.load(Assets.stub.getV1MessageRoomsIdMessagesResponse),
    );
  }
}
