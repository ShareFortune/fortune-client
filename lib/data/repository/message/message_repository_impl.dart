import 'package:fortune_client/data/datasource/remote/go/message_rooms/message_rooms_data_source.dart';
import 'package:fortune_client/data/model/base/message_room/messege_room.dart';
import 'package:fortune_client/data/repository/message/message_repository.dart';

class MessageRepositoryImpl implements MessageRepository {
  MessageRepositoryImpl(this._dataSource);

  final MessageRoomsDataSource _dataSource;

  @override
  Future<String> create() {
    throw UnimplementedError();
  }

  @override
  Future<String> update() {
    throw UnimplementedError();
  }

  @override
  Future<List<MessageRoom>> fetchHost() async {
    final datas = [
      const MessageRoom(
        id: "id",
        roomName: "渋谷で飲み会しませんか？",
        lastSendAt: "2022-09-20",
        lastSendMessage: "最後に送信したメッセージ",
        hostMainImageURL: "hostMainImageURL",
        participantMainImageURLs: ["", ""],
        unreadCount: 3,
      ),
      const MessageRoom(
        id: "id",
        roomName: "サッカー",
        lastSendAt: "2022-09-20",
        lastSendMessage: "最後に送信したメッセージ",
        hostMainImageURL: "hostMainImageURL",
        participantMainImageURLs: ["", ""],
        unreadCount: 3,
      ),
      const MessageRoom(
        id: "id",
        roomName: "テスト",
        lastSendAt: "2022-09-20",
        lastSendMessage: "最後に送信したメッセージ",
        hostMainImageURL: "hostMainImageURL",
        participantMainImageURLs: ["", ""],
        unreadCount: 3,
      ),
    ];

    return datas;
  }
}
