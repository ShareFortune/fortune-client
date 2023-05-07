import 'package:fortune_client/data/datasource/remote/go/message_images/message_images_data_source.dart';
import 'package:fortune_client/data/model/messages/messages_response/messages_response.dart';

class FakeMessageImagesDataSource implements MessageImagesDataSource {
  @override
  Future<ImageMessageIdResponse> send(
      String messageRoomId, Map<String, dynamic> body) {
    // TODO: implement sendImage
    throw UnimplementedError();
  }
}
