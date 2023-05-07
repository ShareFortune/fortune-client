import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/message_rooms/message_rooms_data_source.dart';
import 'package:fortune_client/data/model/messages/message_rooms_response/message_rooms_response.dart';
import 'package:fortune_client/data/repository/message_rooms/message_rooms_repository.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

class MessageRoomsRepositoryImpl implements MessageRoomsRepository {
  MessageRoomsRepositoryImpl(this._messageRooms, this._shared);

  final MessageRoomsDataSource _messageRooms;
  final SharedPreferencesDataSource _shared;

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
    final result = await _messageRooms.getMessageRoomsHost();
    setMessageRoomsHostNextToken(result.nextToken);
    return result.messageRooms;
  }

  @override
  Future<List<MessageRoom>> fetchGuest() async {
    final result = await _messageRooms.getMessageRoomsGuest();
    setMessageRoomsGuestNextToken(result.nextToken);
    return result.messageRooms;
  }

  @override
  Future<List<MessageRoom>> fetchHostNext() async {
    if (messageRoomsHostNextToken?.isNotEmpty != true) return [];
    final result = await _messageRooms.getMessageRoomsHost();
    setMessageRoomsHostNextToken(result.nextToken);
    return result.messageRooms;
  }

  @override
  Future<List<MessageRoom>> fetchGuestNext() async {
    if (messageRoomsGuestNextToken?.isNotEmpty != true) return [];
    final result = await _messageRooms.getMessageRoomsGuest();
    setMessageRoomsGuestNextToken(result.nextToken);
    return result.messageRooms;
  }

  /// NextTokenを取得 (ホスト)
  String? get messageRoomsHostNextToken =>
      _shared.getString(AppPrefKey.messagesNextTokenHost.keyString);

  /// NextTokenを保存 (ホスト)
  void setMessageRoomsHostNextToken(String? nextToken) => _shared.setString(
      AppPrefKey.messagesNextTokenHost.keyString, nextToken ?? "");

  /// NextTokenを取得 (ゲスト)
  String? get messageRoomsGuestNextToken =>
      _shared.getString(AppPrefKey.messagesNextTokenGuest.keyString);

  /// NextTokenを保存 (ゲスト)
  void setMessageRoomsGuestNextToken(String? nextToken) => _shared.setString(
      AppPrefKey.messagesNextTokenGuest.keyString, nextToken ?? "");
}
