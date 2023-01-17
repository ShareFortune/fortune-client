// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/room_join_request_status.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/data/model/members_num/members_num.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_room_as_guest.freezed.dart';
part 'participant_room_as_guest.g.dart';

@freezed
class ParticipantRoomAsGuest with _$ParticipantRoomAsGuest {
  const factory ParticipantRoomAsGuest({
    /// ルームID
    @JsonKey(name: "id") required String id,

    /// ルームネーム
    @JsonKey(name: "roomName") required String roomName,

    /// ホストアイコン
    @JsonKey(name: "hostMainImageURL") required String hostMainImageURL,

    /// メンバーアイコンリスト
    @JsonKey(name: "participantMainImageURLs")
        required List<String>? participantMainImageURLs,

    /// 開催地
    @JsonKey(name: "address") required Address address,

    /// 参加人数
    @JsonKey(name: "membersNum") required MembersNum membersNum,

    /// ステータス
    @JsonKey(name: "roomStatus")
    @RoomStatusConverter()
        required RoomStatus roomStatus,

    /// ステータス
    @JsonKey(name: "joinRequestStatus")
    @RoomJoinRequestStatusConverter()
        required RoomJoinRequestStatus joinRequestStatus,
  }) = _ParticipantRoomAsGuest;

  factory ParticipantRoomAsGuest.fromJson(Map<String, dynamic> json) =>
      _$ParticipantRoomAsGuestFromJson(json);
}
