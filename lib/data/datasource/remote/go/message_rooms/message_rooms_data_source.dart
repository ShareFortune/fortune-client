import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/messages/message_rooms_response/message_rooms_response.dart';
import 'package:retrofit/retrofit.dart';

part 'message_rooms_data_source.g.dart';

@RestApi()
abstract class MessageRoomsDataSource {
  factory MessageRoomsDataSource(Dio dio) = _MessageRoomsDataSource;

  @GET('/messageRooms/host')
  @authenticatedRequest
  Future<MessageRoomsResponse> getMessageRoomsHost();

  @GET('/messageRooms/guest')
  @authenticatedRequest
  Future<MessageRoomsResponse> getMessageRoomsGuest();
}
