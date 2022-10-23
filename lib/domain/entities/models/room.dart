import '../const/types.dart';
import '../enum/age_group.dart';
import '../enum/room_status.dart';
import 'member.dart';
import 'tag.dart';

class Room {
  /// ルームID
  final RoomID id;

  /// ルームネーム
  final String name;

  /// 開催者
  final Member hostUser;

  /// ルームのステータス
  final RoomStatus roomStatus;

  /// 作成日時
  final DateTime createdAt;

  /// 参加メンバー
  final List<Member> members;

  /// 設定タグ
  final List<Tag> tags;

  Room({
    required this.id,
    required this.name,
    required this.roomStatus,
    required this.createdAt,
    required this.hostUser,
    required this.members,
    required this.tags,
  });
}
