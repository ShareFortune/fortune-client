import 'package:fortune_client/data/datasource/remote/go/message_images/message_images_data_source.dart';
import 'package:fortune_client/data/model/message_images/post_v1_message_rooms_id_message_images/post_v1_message_rooms_id_message_images.dart';

class FakeMessageImagesDataSource implements MessageImagesDataSource {
  @override
  Future<PostV1MessageRoomsIdMessageImagesResponse> send(
      String messageRoomId, Map<String, dynamic> body) {
    // TODO: implement sendImage
    throw UnimplementedError();
  }
}
