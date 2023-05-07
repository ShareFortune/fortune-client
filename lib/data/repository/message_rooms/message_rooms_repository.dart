import 'package:fortune_client/data/model/messages/message_rooms_response/message_rooms_response.dart';

abstract class MessageRoomsRepository {
  Future<String> create();
  Future<String> update();

  /// メッセージルームリストを取得 (ホスト)
  Future<List<MessageRoom>> fetchHost();

  /// 次のページを取得 (ホスト)
  Future<List<MessageRoom>> fetchHostNext();

  /// メッセージルームリストを取得 (ゲスト)
  Future<List<MessageRoom>> fetchGuest();

  /// 次のページを取得 (ゲスト)
  Future<List<MessageRoom>> fetchGuestNext();
}
