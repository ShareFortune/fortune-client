import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/enum/join_request_status.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/data/model/profile/members_num/members_num.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rooms_guest_response.freezed.dart';
part 'rooms_guest_response.g.dart';

@freezed
class RoomsGuestResponse with _$RoomsGuestResponse {
  const factory RoomsGuestResponse({
    required String nextToken,
    required List<RoomsGuestResponseRoom> rooms,
  }) = _RoomsGuestResponse;

  factory RoomsGuestResponse.fromJson(Map<String, dynamic> json) =>
      _$RoomsGuestResponseFromJson(json);
}

@freezed
class RoomsGuestResponseRoom with _$RoomsGuestResponseRoom {
  const factory RoomsGuestResponseRoom({
    /// ルームID
    required String id,

    /// ルームネーム
    required String roomName,

    /// ホストアイコン
    required String hostMainImageURL,

    /// メンバーアイコンリスト
    List<String>? participantMainImageURLs,

    /// 開催地
    required Address address,

    /// 参加人数
    required MembersNum membersNum,

    /// ルームステータス
    @RoomStatusConverter() required RoomStatus roomStatus,

    /// 参加申請リクエストのステータス
    @JoinRequestStatusConverter() required JoinRequestStatus joinRequestStatus,
  }) = _GetV1RoomsGuestResponseRoom;

  factory RoomsGuestResponseRoom.fromJson(Map<String, dynamic> json) =>
      _$RoomsGuestResponseRoomFromJson(json);
}
