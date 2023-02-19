// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/data/model/core/base/members_num/members_num.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_v1_rooms_requesting.freezed.dart';
part 'get_v1_rooms_requesting.g.dart';

@freezed
class GetV1RoomsRequestingResponse with _$GetV1RoomsRequestingResponse {
  const factory GetV1RoomsRequestingResponse({
    @JsonKey(name: "nextToken") required String nextToken,
    @JsonKey(name: "rooms")
        required List<GetV1RoomsRequestingResponseRoom> data,
  }) = _GetV1RoomsRequestingResponse;

  factory GetV1RoomsRequestingResponse.fromJson(Map<String, dynamic> json) =>
      _$GetV1RoomsRequestingResponseFromJson(json);
}

@freezed
class GetV1RoomsRequestingResponseRoom with _$GetV1RoomsRequestingResponseRoom {
  const factory GetV1RoomsRequestingResponseRoom({
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
  }) = _GetV1RoomsRequestingResponseRoom;

  factory GetV1RoomsRequestingResponseRoom.fromJson(
          Map<String, dynamic> json) =>
      _$GetV1RoomsRequestingResponseRoomFromJson(json);
}
