import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/join_request_status.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/data/model/participating_user/participating_user.dart';
import 'package:fortune_client/data/model/room_detail/room_detail.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'room_detail_state.freezed.dart';

@freezed
class RoomDetailState with _$RoomDetailState {
  const factory RoomDetailState({
    required String roomId,
    @Default(AsyncLoading()) AsyncValue<RoomDetailStateInfo> detail,
  }) = _RoomDetailState;
}

@freezed
class RoomDetailStateInfo with _$RoomDetailStateInfo {
  const factory RoomDetailStateInfo({
    required String title,
    required ParticipatingUser host,
    required String explanation,
    required List<ParticipatingUser> members,
    required List<Tag> tags,
    required Address address,
    required int membersNum,
    required bool isHost,
    required bool isMember,
    required RoomStatus status,
    required RoomJoinRequestStatus? joinRequestStatus,
  }) = _RoomDetailStateInfo;

  static RoomDetailStateInfo from(RoomDetail data) {
    return RoomDetailStateInfo(
      title: data.title,
      host: data.hostUser,
      explanation: "ルームに関する説明",
      members: data.participants ?? [],
      tags: data.tags ?? [],
      address: data.address,
      membersNum: data.membersNum,
      isHost: data.isHost,
      isMember: data.isMember,
      status: data.status,
      joinRequestStatus: data.joinRequestStatus,
    );
  }
}
