import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/messages/get_v1_message_rooms_id_messages/get_v1_message_rooms_id_messages.dart';
import 'package:retrofit/retrofit.dart';

part 'messages_data_source.g.dart';

@RestApi()
abstract class MessagesDataSource {
  factory MessagesDataSource(Dio dio) = _MessagesDataSource;

  /// メッセージ送信・テキスト
  /// [messageRoomId]送信するメッセージルームのID
  @POST('/messageRooms/{messageRoomId}/messages')
  @authenticatedRequest
  Future<void> sendText(
    @Path('messageRoomId') String messageRoomId,
    @Body() Map<String, dynamic> body,
  );

  /// メッセージ送信・画像
  /// [messageRoomId]送信するメッセージルームのID
  @POST('/messageRooms/{messageRoomId}/messageImages')
  @authenticatedRequest
  Future<void> sendImage(
    @Path('messageRoomId') String messageRoomId,
    @Body() Map<String, dynamic> body,
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
