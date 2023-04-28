import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/enum/join_request_status.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:fortune_client/data/model/users/fortune_user/fortune_user.dart';
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
