import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/enum/join_request_status.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/data/model/profile/members_num/members_num.dart';
import 'package:fortune_client/data/model/rooms/rooms_guest_response/rooms_guest_response.dart';
import 'package:fortune_client/data/model/rooms/rooms_host_response/rooms_host_response.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/room/room_theme.dart';

enum RoomType {
  host,
  guest,
}

abstract class RoomState {
  final RoomType type;

  /// ID
  final String id;

  /// タイトル
  final String title;

  /// アドレス
  final Address address;

  /// ルームステータス
  final RoomStatus status;

  /// 参加人数
  final MembersNum membersNum;

  /// ホスト画像URL
  final String? hostImageUrl;

  /// 参加ユーザー画像URL
  final List<String> membersImageUrl;

  /// いいねしたかどうか
  final bool? isFavorite;

  /// テーマ
  final RoomTheme theme;

  /// ホストルームかどうか
  bool get isHost => type == RoomType.host;

  /// Pendingかどうか
  bool get isPending => status == RoomStatus.pending;

  /// リクエスト数
  int get joinRequestCount => 0;

  /// リクエストがあるかどうか
  bool get hasJoinRequest => false;

  RoomState({
    this.type = RoomType.guest,
    required this.title,
    required this.address,
    required this.id,
    required this.status,
    required this.membersNum,
    required this.membersImageUrl,
    required this.theme,
    this.hostImageUrl,
    this.isFavorite,
  });
}

/// ホストルーム
class HostRoomState extends RoomState {
  /// リクエスト数
  @override
  final int joinRequestCount;

  /// リクエストがあるかどうか
  @override
  bool get hasJoinRequest => joinRequestCount > 0;

  HostRoomState._({
    required super.type,
    required super.title,
    required super.address,
    required super.id,
    required super.status,
    required super.membersNum,
    required super.membersImageUrl,
    required super.theme,
    required this.joinRequestCount,
  });

  factory HostRoomState(AppTheme theme, RoomsHostResponseRoom room) {
    return HostRoomState._(
      type: RoomType.host,
      title: room.roomName,
      address: room.address,
      id: room.id,
      status: room.status,
      membersNum: room.membersNum,
      membersImageUrl: [...?room.participantMainImageURLs],
      joinRequestCount: room.joinRequestsCount,
      theme: RoomThemeFactory.host(
        theme: theme,
        status: room.status,
        joinRequestCount: room.joinRequestsCount,
      ).create(),
    );
  }
}

/// ゲストルーム
class GuestRoomState extends RoomState {
  /// 参加ステータス
  final JoinRequestStatus joinRequestStatus;

  GuestRoomState._({
    required super.id,
    required super.title,
    required super.address,
    required super.status,
    required super.hostImageUrl,
    required super.membersNum,
    required super.membersImageUrl,
    required super.theme,
    required this.joinRequestStatus,
  });

  factory GuestRoomState(AppTheme theme, RoomsGuestResponseRoom room) {
    return GuestRoomState._(
      id: room.id,
      title: room.roomName,
      address: room.address,
      membersNum: room.membersNum,
      hostImageUrl: room.hostMainImageURL,
      membersImageUrl: [
        room.hostMainImageURL,
        ...?room.participantMainImageURLs
      ],
      status: room.roomStatus,
      joinRequestStatus: room.joinRequestStatus,
      theme: RoomThemeFactory.guest(
        theme: theme,
        status: room.roomStatus,
        joinRequestStatus: room.joinRequestStatus,
      ).create(),
    );
  }
}
