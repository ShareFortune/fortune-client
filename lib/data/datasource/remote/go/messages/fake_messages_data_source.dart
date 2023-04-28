import 'package:fortune_client/data/datasource/remote/go/messages/messages_data_source.dart';
import 'package:fortune_client/data/model/messages/messages_response/messages_response.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_utils.dart';

class FakeMessagesDataSource implements MessagesDataSource {
  @override
  Future<MessagesResponse> fetchMessages(
    String messageRoomId, {
    String? nextToken,
    int? perPage,
  }) async {
    final result =
        await JsonUtils.load(Assets.stub.messageRoomsIdMessagesResponse);
    return MessagesResponse.fromJson(result);
  }

  @override
  Future<void> send(String messageRoomId, Map<String, dynamic> body) async {
    throw UnimplementedError();
  }
}
