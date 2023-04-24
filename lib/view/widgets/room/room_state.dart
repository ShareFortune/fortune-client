import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/data/model/core/base/members_num/members_num.dart';
import 'package:fortune_client/data/model/core/enum/join_request_status.dart';
import 'package:fortune_client/data/model/core/enum/room_status.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/room/room_theme.dart';

abstract class RoomState {
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

  RoomState({
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
  final int joinRequestCount;

  HostRoomState._({
    required super.title,
    required super.address,
    required super.id,
    required super.status,
    required super.membersNum,
    required super.membersImageUrl,
    required super.theme,
    required this.joinRequestCount,
  });

  factory HostRoomState(AppTheme theme, GetV1RoomsHostResponseRoom room) {
    return HostRoomState._(
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

  factory GuestRoomState(AppTheme theme, GetV1RoomsGuestResponseRoom room) {
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
