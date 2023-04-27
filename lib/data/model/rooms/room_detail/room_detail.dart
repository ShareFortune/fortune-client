import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/data/model/core/base/fortune_user/fortune_user.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/data/model/core/enum/join_request_status.dart';
import 'package:fortune_client/data/model/core/enum/room_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_detail.freezed.dart';
part 'room_detail.g.dart';

@freezed
class RoomDetail with _$RoomDetail {
  const factory RoomDetail({
    required String id,
    required String roomName,
    required String applicationDeadline,
    required FortuneUser hostUser,
    List<FortuneUser>? participants,
    required Address address,
    List<Tag>? tags,
    @RoomStatusConverter() required RoomStatus status,
    @JoinRequestStatusConverter() JoinRequestStatus? joinRequestStatus,
    required int membersNum,
    required bool isHost,
    required bool isMember,
  }) = _RoomDetail;

  factory RoomDetail.fromJson(Map<String, dynamic> json) =>
      _$RoomDetailFromJson(json);
}
