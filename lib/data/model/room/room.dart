import 'package:fortune_client/data/model/address/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {
  const Room._();
  const factory Room({
    /// ルームID
    required String? id,

    /// ルームネーム
    required String roomName,

    /// 期限
    required String applicationDeadline,

    /// ホスト画像
    required String hostMainImageURL,

    /// メンバー画像リスト
    required List<String> participantMainImageURLs,

    /// 居住地
    required Map<String, dynamic> address,

    /// ホストかどうか
    required bool isHost,

    /// 参加者かどうか
    required bool isParticipant,
  }) = _Room;

  Address get addressEntity => Address.fromJson(address);

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
