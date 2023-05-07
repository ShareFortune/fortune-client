import 'package:fortune_client/data/datasource/remote/go/message_rooms/message_rooms_data_source.dart';
import 'package:fortune_client/data/model/messages/message_rooms_response/message_rooms_response.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_utils.dart';

class FakeMessageRoomsDataSource implements MessageRoomsDataSource {
  @override
  Future<MessageRoomsResponse> getMessageRoomsHost() async {
    return MessageRoomsResponse.fromJson(
      await JsonUtils.load(Assets.stub.messageRoomsResponseHost),
    );
  }

  @override
  Future<MessageRoomsResponse> getMessageRoomsGuest() async {
    return MessageRoomsResponse.fromJson(
      await JsonUtils.load(Assets.stub.messageRoomsResponseGuest),
    );
  }
}
