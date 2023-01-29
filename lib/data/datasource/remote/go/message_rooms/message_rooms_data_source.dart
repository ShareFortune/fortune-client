import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/message_rooms/get_v1_message_rooms_response/get_v1_message_rooms_response.dart';
import 'package:retrofit/retrofit.dart';

part 'message_rooms_data_source.g.dart';

@RestApi()
abstract class MessageRoomsDataSource {
  factory MessageRoomsDataSource(Dio dio) = _MessageRoomsDataSource;

  @GET('/messageRooms/host')
  @authenticatedRequest
  Future<GetV1MessageRoomsResponse> getMessageRoomsHost();

  @GET('/messageRooms/guest')
  @authenticatedRequest
  Future<GetV1MessageRoomsResponse> getMessageRoomsGuest();
}
