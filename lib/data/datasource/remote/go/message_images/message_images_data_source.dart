import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/messages/messages_response/messages_response.dart';
import 'package:retrofit/retrofit.dart';

part 'message_images_data_source.g.dart';

@RestApi()
abstract class MessageImagesDataSource {
  factory MessageImagesDataSource(Dio dio) = _MessageImagesDataSource;

  /// メッセージ送信・画像
  /// [messageRoomId]送信するメッセージルームのID
  @POST('/messageRooms/{messageRoomId}/messageImages')
  @authenticatedRequest
  Future<ImageMessageIdResponse> send(
    @Path('messageRoomId') String messageRoomId,
    @Body() Map<String, dynamic> body,
  );
}
