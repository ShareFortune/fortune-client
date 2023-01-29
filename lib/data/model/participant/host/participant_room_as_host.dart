// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/data/model/members_num/members_num.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_room_as_host.freezed.dart';
part 'participant_room_as_host.g.dart';

@freezed
class ParticipantRoomAsHost with _$ParticipantRoomAsHost {
  const factory ParticipantRoomAsHost({
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
  }) = _ParticipantRoomAsHost;

  factory ParticipantRoomAsHost.fromJson(Map<String, dynamic> json) =>
      _$ParticipantRoomAsHostFromJson(json);
}
