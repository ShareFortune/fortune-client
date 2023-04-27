// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/data/model/core/base/members_num/members_num.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rooms.freezed.dart';
part 'rooms.g.dart';

@freezed
class Rooms with _$Rooms {
  const factory Rooms({
    @JsonKey(name: "nextToken") required String nextToken,
    @JsonKey(name: "rooms") required List<Room> data,
  }) = _Rooms;

  factory Rooms.fromJson(Map<String, dynamic> json) => _$RoomsFromJson(json);
}

@freezed
class Room with _$Room {
  const factory Room({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "roomName") required String roomName,
    @JsonKey(name: "hostMainImageURL") required String hostMainImageURL,
    @JsonKey(name: "participantMainImageURLs")
        List<String>? participantMainImageURLs,
    @JsonKey(name: "address") required Address address,
    @JsonKey(name: "membersNum") required MembersNum membersNum,
    @JsonKey(name: "isFavorite") required bool isFavorite,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
