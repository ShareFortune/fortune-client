// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/base/address/address.dart';
import 'package:fortune_client/data/model/base/fortune_user/fortune_user.dart';
import 'package:fortune_client/data/model/base/members_num/members_num.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/model/enum/join_request_status.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {
  const factory Room({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "roomName") required String roomName,
    @JsonKey(name: "applicationDeadline") required String applicationDeadline,
    @JsonKey(name: "hostUser") required FortuneUser hostUser,
    @JsonKey(name: "participants") List<FortuneUser>? participants,
    @JsonKey(name: "address") required Address address,
    @JsonKey(name: "tags") List<Tag>? tags,
    @JsonKey(name: "roomStatus")
    @RoomStatusConverter()
        required RoomStatus roomStatus,
    @JsonKey(name: "joinRequestStatus")
    @JoinRequestStatusConverter()
        JoinRequestStatus? joinRequestStatus,
    @JsonKey(name: "membersNum") required MembersNum membersNum,
    @JsonKey(name: "isHost") required bool isHost,
    @JsonKey(name: "isMember") required bool isMember,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
