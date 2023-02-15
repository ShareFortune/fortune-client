import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/messages/get_v1_message_rooms_id_messages_response/get_v1_message_rooms_id_messages_response.dart';
import 'package:retrofit/retrofit.dart';

part 'messages_data_source.g.dart';

@RestApi()
abstract class MessagesDataSource {
  factory MessagesDataSource(Dio dio) = _MessagesDataSource;

  /// メッセージ送信
  /// [messageRoomId]送信するメッセージルームのID
  @POST('/messageRooms/{messageRoomId}/messages')
  @authenticatedRequest
  Future<void> send(
    @Path('messageRoomId') String messageRoomId,
  );

  /// メッセージ一覧取得
  /// [messageRoomId]送信するメッセージルームのID
  @GET('/messageRooms/{messageRoomId}/messages')
  @authenticatedRequest
  Future<GetV1MessageRoomsIdMessagesResponse> get(
    @Path('messageRoomId') String messageRoomId, {
    @Query("nextToken") String? nextToken,
    @Query("perPage") int? perPage,
  });
}
