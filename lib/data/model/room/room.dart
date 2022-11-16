import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/data/model/member/member.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {
  const factory Room({
    /// ルームID
    required String? id,

    /// ルームネーム
    required String name,

    /// 開催者
    required Member hostUser,

    /// ルームのステータス
    required RoomStatus roomStatus,

    /// 作成日時
    required DateTime createdAt,

    /// 参加メンバー
    required List<Member> members,

    /// 設定タグ
    required List<Tag> tags,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
