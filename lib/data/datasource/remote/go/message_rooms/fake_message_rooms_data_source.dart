import 'package:fortune_client/data/datasource/core/stub_loader.dart';
import 'package:fortune_client/data/model/message_rooms/base/message_rooms.dart';
import 'package:fortune_client/data/model/message_rooms/host/message_room_host.dart';
import 'package:fortune_client/gen/assets.gen.dart';

class FakeMessageRoomsDataSource extends StubLoader {
  Future<MessageRooms<MessageRoomHost>> fetchMessageRoomsHost() async {
    await Future.delayed(const Duration(seconds: 3));
    return MessageRooms.fromJson(
      await loadJson(Assets.stub.messageRoomsHost),
      (json) => MessageRoomHost.fromJson(json as Map<String, dynamic>),
    );
  }
}
