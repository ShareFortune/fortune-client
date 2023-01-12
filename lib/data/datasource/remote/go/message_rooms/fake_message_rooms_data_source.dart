import 'package:fortune_client/data/datasource/remote/go/message_rooms/message_rooms_data_source.dart';
import 'package:fortune_client/data/model/message_rooms/base/message_rooms.dart';
import 'package:fortune_client/data/model/message_rooms/host/message_room_host.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_roader.dart';
import 'package:fortune_client/util/logger/logger.dart';

class FakeMessageRoomsDataSource implements MessageRoomsDataSource {
  @override
  Future<MessageRooms<MessageRoomHost>> fetchMessageRoomsHost() async {
    try {
      logger.i("ホストのメッセージを取得");
      await Future.delayed(const Duration(seconds: 3));
      return MessageRooms.fromJson(
        await Json.load(Assets.stub.messageRoomsHost),
        (json) => MessageRoomHost.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
