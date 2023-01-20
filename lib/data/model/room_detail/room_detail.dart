// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/room_join_request_status.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/data/model/participating_user/participating_user.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_detail.freezed.dart';
part 'room_detail.g.dart';

@freezed
class RoomDetail with _$RoomDetail {
  const factory RoomDetail({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'roomName') required String title,
    @JsonKey(name: 'applicationDeadline') required String applicationDeadline,
    @JsonKey(name: 'hostUser') required ParticipatingUser hostUser,
    @JsonKey(name: 'participants') List<ParticipatingUser>? participants,
    @JsonKey(name: 'address') required Address address,
    @JsonKey(name: 'tags') List<Tag>? tags,
    @JsonKey(name: "status") @RoomStatusConverter() required RoomStatus status,
    @JsonKey(name: "joinRequestStatus")
    @RoomJoinRequestStatusConverter()
        RoomJoinRequestStatus? joinRequestStatus,
    @JsonKey(name: 'membersNum') required int membersNum,
    @JsonKey(name: 'isHost') required bool isHost,
    @JsonKey(name: 'isMember') required bool isMember,
  }) = _RoomDetail;

  factory RoomDetail.fromJson(Map<String, dynamic> json) =>
      _$RoomDetailFromJson(json);
}
