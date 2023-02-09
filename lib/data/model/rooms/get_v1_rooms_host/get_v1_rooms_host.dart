// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/base/address/address.dart';
import 'package:fortune_client/data/model/base/members_num/members_num.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_v1_rooms_host.freezed.dart';
part 'get_v1_rooms_host.g.dart';

@freezed
class GetV1RoomsHostResponse with _$GetV1RoomsHostResponse {
  const factory GetV1RoomsHostResponse({
    @JsonKey(name: "nextToken") required String nextToken,
    @JsonKey(name: "rooms") required List<GetV1RoomsHostResponseRoom> data,
  }) = _GetV1RoomsHostResponse;

  factory GetV1RoomsHostResponse.fromJson(Map<String, dynamic> json) =>
      _$GetV1RoomsHostResponseFromJson(json);
}

@freezed
class GetV1RoomsHostResponseRoom with _$GetV1RoomsHostResponseRoom {
  const factory GetV1RoomsHostResponseRoom({
    /// ルームID
    @JsonKey(name: "id") required String id,

    /// ルームネーム
    @JsonKey(name: "roomName") required String roomName,

    /// メンバー画像リスト
    @JsonKey(name: "participantMainImageURLs")
        required List<String>? participantMainImageURLs,

    /// 開催地
    @JsonKey(name: "address") required Address address,

    /// 参加人数
    @JsonKey(name: "membersNum") required MembersNum membersNum,

    /// リクエストカウント
    @JsonKey(name: "joinRequestsCount") required int joinRequestsCount,

    /// ステータス
    @JsonKey(name: "status") @RoomStatusConverter() required RoomStatus status,
  }) = _GetV1RoomsHostResponseRoom;

  factory GetV1RoomsHostResponseRoom.fromJson(Map<String, dynamic> json) =>
      _$GetV1RoomsHostResponseRoomFromJson(json);
}
