// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/fortune_user/fortune_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_detail.freezed.dart';
part 'room_detail.g.dart';

@freezed
class RoomDetail with _$RoomDetail {
  const factory RoomDetail({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'isHost') required bool isHost,
    @JsonKey(name: 'isMember') required bool isMember,
    @JsonKey(name: 'membersNum') required int membersNum,
    @JsonKey(name: 'participants') required List participants,
    @JsonKey(name: 'roomName') required String roomName,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'tags') required List tags,
    @JsonKey(name: 'applicationDeadline') required String applicationDeadline,
    @JsonKey(name: 'address') required Address address,
    @JsonKey(name: 'hostUser') required FortuneUser hostUser,
  }) = _RoomDetail;

  factory RoomDetail.fromJson(Map<String, dynamic> json) =>
      _$RoomDetailFromJson(json);
}
