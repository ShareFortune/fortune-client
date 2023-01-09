import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/message_rooms/base/message_rooms.dart';
import 'package:fortune_client/data/model/message_rooms/host/message_room_host.dart';
import 'package:retrofit/retrofit.dart';

part 'message_rooms_data_source.g.dart';

@RestApi()
abstract class MessageRoomsDataSource {
  factory MessageRoomsDataSource(Dio dio) = _MessageRoomsDataSource;

  @GET('/rooms')
  @authenticatedRequest
  Future<MessageRooms<MessageRoomHost>> fetchMessageRoomsHost();
}
