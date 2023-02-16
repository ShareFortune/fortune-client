import 'package:fortune_client/data/datasource/remote/go/messages/messages_data_source.dart';
import 'package:fortune_client/data/model/messages/get_v1_message_rooms_id_messages/get_v1_message_rooms_id_messages.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_loader.dart';

class FakeMessagesDataSource implements MessagesDataSource {
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

  @override
  Future<void> sendImage(String messageRoomId, Map<String, dynamic> body) {
    // TODO: implement sendImage
    throw UnimplementedError();
  }

  @override
  Future<void> sendText(String messageRoomId, Map<String, dynamic> body) {
    // TODO: implement sendText
    throw UnimplementedError();
  }
}
