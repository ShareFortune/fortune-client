import 'package:fortune_client/data/datasource/remote/go/message_rooms/message_rooms_data_source.dart';
import 'package:fortune_client/data/model/message_rooms/get_v1_message_rooms_response/get_v1_message_rooms_response.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_loader.dart';

class FakeMessageRoomsDataSource implements MessageRoomsDataSource {
  @override
  Future<GetV1MessageRoomsResponse> getMessageRoomsHost() async {
    return GetV1MessageRoomsResponse.fromJson(
      await JsonLoader.load(Assets.stub.getV1MessageRoomsResponse),
    );
  }

  @override
  Future<GetV1MessageRoomsResponse> getMessageRoomsGuest() async {
    return const GetV1MessageRoomsResponse(nextToken: "token", data: []);
    return GetV1MessageRoomsResponse.fromJson(
      await JsonLoader.load(Assets.stub.getV1MessageRoomsResponse),
    );
  }
}
