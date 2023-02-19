import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/message_images/post_v1_message_rooms_id_message_images/post_v1_message_rooms_id_message_images.dart';
import 'package:retrofit/retrofit.dart';

part 'message_images_data_source.g.dart';

@RestApi()
abstract class MessageImagesDataSource {
  factory MessageImagesDataSource(Dio dio) = _MessageImagesDataSource;

  /// メッセージ送信・画像
  /// [messageRoomId]送信するメッセージルームのID
  @POST('/messageRooms/{messageRoomId}/messageImages')
  @authenticatedRequest
  Future<PostV1MessageRoomsIdMessageImagesResponse> send(
    @Path('messageRoomId') String messageRoomId,
    @Body() Map<String, dynamic> body,
  );
}
