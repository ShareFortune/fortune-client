import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/data/model/profile/members_num/members_num.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rooms_host_response.freezed.dart';
part 'rooms_host_response.g.dart';

@freezed
class RoomsHostResponse with _$RoomsHostResponse {
  const factory RoomsHostResponse({
    required String nextToken,
    required List<RoomsHostResponseRoom> rooms,
  }) = _RoomsHostResponse;

  factory RoomsHostResponse.fromJson(Map<String, dynamic> json) =>
      _$RoomsHostResponseFromJson(json);
}

@freezed
class RoomsHostResponseRoom with _$RoomsHostResponseRoom {
  const factory RoomsHostResponseRoom({
    /// ルームID
    required String id,

    /// ルームネーム
    required String roomName,

    /// メンバー画像リスト
    required List<String>? participantMainImageURLs,

    /// 開催地
    required Address address,

    /// 参加人数
    required MembersNum membersNum,

    /// リクエストカウント
    required int joinRequestsCount,

    /// ステータス
    @RoomStatusConverter() required RoomStatus status,
  }) = _RoomsHostResponseRoom;

  factory RoomsHostResponseRoom.fromJson(Map<String, dynamic> json) =>
      _$RoomsHostResponseRoomFromJson(json);
}
