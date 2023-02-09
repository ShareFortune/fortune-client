// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/base/address/address.dart';
import 'package:fortune_client/data/model/base/members_num/members_num.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_v1_rooms.freezed.dart';
part 'get_v1_rooms.g.dart';

@freezed
class GetV1RoomsResponse with _$GetV1RoomsResponse {
  const factory GetV1RoomsResponse({
    @JsonKey(name: "nextToken") required String nextToken,
    @JsonKey(name: "rooms") required List<GetV1RoomsResponseRoom> data,
  }) = _GetV1RoomsResponse;

  factory GetV1RoomsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetV1RoomsResponseFromJson(json);
}

@freezed
class GetV1RoomsResponseRoom with _$GetV1RoomsResponseRoom {
  const factory GetV1RoomsResponseRoom({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "roomName") required String roomName,
    @JsonKey(name: "hostMainImageURL") required String hostMainImageURL,
    @JsonKey(name: "participantMainImageURLs")
        List<String>? participantMainImageURLs,
    @JsonKey(name: "address") required Address address,
    @JsonKey(name: "membersNum") required MembersNum membersNum,
    @JsonKey(name: "isFavorite") required bool isFavorite,
  }) = _GetV1RoomsResponseRoom;

  factory GetV1RoomsResponseRoom.fromJson(Map<String, dynamic> json) =>
      _$GetV1RoomsResponseRoomFromJson(json);
}
