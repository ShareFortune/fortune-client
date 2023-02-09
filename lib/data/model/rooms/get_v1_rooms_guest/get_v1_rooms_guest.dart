// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/base/address/address.dart';
import 'package:fortune_client/data/model/base/members_num/members_num.dart';
import 'package:fortune_client/data/model/enum/join_request_status.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_v1_rooms_guest.freezed.dart';
part 'get_v1_rooms_guest.g.dart';

@freezed
class GetV1RoomsGuestResponse with _$GetV1RoomsGuestResponse {
  const factory GetV1RoomsGuestResponse({
    @JsonKey(name: "nextToken") required String nextToken,
    @JsonKey(name: "rooms") required List<GetV1RoomsGuestResponseRoom> data,
  }) = _GetV1RoomsGuestResponse;

  factory GetV1RoomsGuestResponse.fromJson(Map<String, dynamic> json) =>
      _$GetV1RoomsGuestResponseFromJson(json);
}

@freezed
class GetV1RoomsGuestResponseRoom with _$GetV1RoomsGuestResponseRoom {
  const factory GetV1RoomsGuestResponseRoom({
    /// ルームID
    @JsonKey(name: "id") required String id,

    /// ルームネーム
    @JsonKey(name: "roomName") required String roomName,

    /// ホストアイコン
    @JsonKey(name: "hostMainImageURL") required String hostMainImageURL,

    /// メンバーアイコンリスト
    @JsonKey(name: "participantMainImageURLs")
        List<String>? participantMainImageURLs,

    /// 開催地
    @JsonKey(name: "address") required Address address,

    /// 参加人数
    @JsonKey(name: "membersNum") required MembersNum membersNum,

    /// ルームステータス
    @JsonKey(name: "roomStatus")
    @RoomStatusConverter()
        required RoomStatus roomStatus,

    /// 参加申請リクエストのステータス
    @JsonKey(name: "joinRequestStatus")
    @JoinRequestStatusConverter()
        required JoinRequestStatus joinRequestStatus,
  }) = _GetV1RoomsGuestResponseRoom;

  factory GetV1RoomsGuestResponseRoom.fromJson(Map<String, dynamic> json) =>
      _$GetV1RoomsGuestResponseRoomFromJson(json);
}
