import 'package:fortune_client/data/datasource/remote/go/message_rooms/message_rooms_data_source.dart';
import 'package:fortune_client/data/model/message_rooms/get_v1_message_rooms_response/get_v1_message_rooms_response.dart';

class FakeMessageRoomsDataSource implements MessageRoomsDataSource {
  @override
  Future<GetV1MessageRoomsResponse> getMessageRoomsGuest() {
    // TODO: implement fetchGuest
    throw UnimplementedError();
  }

  @override
  Future<GetV1MessageRoomsResponse> getMessageRoomsHost() {
    // TODO: implement fetchHost
    throw UnimplementedError();
  }
  // @override
  // Future<MessageRooms<MessageRoomHost>> fetchMessageRoomsHost() async {
  //   try {
  //     logger.i("ホストのメッセージを取得");
  //     await Future.delayed(const Duration(seconds: 3));
  //     return MessageRooms.fromJson(
  //       await Json.load(Assets.stub.messageRoomsHost),
  //       (json) => MessageRoomHost.fromJson(json as Map<String, dynamic>),
  //     );
  //   } catch (e) {
  //     logger.e(e);
  //     rethrow;
  //   }
  // }
}
