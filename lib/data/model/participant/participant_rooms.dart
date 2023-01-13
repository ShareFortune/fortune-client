// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/members_num/members_num.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_rooms.freezed.dart';
part 'participant_rooms.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ParticipantRooms<T> {
  ParticipantRooms(this.nextToken, this.rooms);

  @JsonKey(name: 'nextToken')
  String nextToken;

  @JsonKey(name: 'rooms')
  List<T> rooms;

  factory ParticipantRooms.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ParticipantRoomsFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T value) toJsonT) {
    return _$ParticipantRoomsToJson<T>(this, toJsonT);
  }
}

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

    /// 参加人数
    @JsonKey(name: "membersNum") required MembersNum membersNum,

    /// リクエストカウント
    @JsonKey(name: "joinRequestsCount") required int joinRequestsCount,

    /// ステータス
    @JsonKey(name: "status") required String status,
    // @JsonKey(name: "status")
    // @RoomStatusEnumConverter()
    //     required RoomStatus status,
  }) = _ParticipantRoomAsHost;

  factory ParticipantRoomAsHost.fromJson(Map<String, dynamic> json) =>
      _$ParticipantRoomAsHostFromJson(json);
}
