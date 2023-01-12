// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/address/address.dart';
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
    /// ルームID
    @JsonKey(name: "id") required String id,

    /// ルームネーム
    @JsonKey(name: "roomName") required String roomName,

    /// ホスト画像
    @JsonKey(name: "hostMainImageURL") required String hostMainImageURL,

    /// メンバー画像リスト
    @JsonKey(name: "participantMainImageURLs")
        required List<String>? participantMainImageURLs,

    /// 居住地
    @JsonKey(name: "address") required Address address,

    /// お気に入りしているかどうか
    @JsonKey(name: "isFavorite") required bool isFavorite,

    ///
    /// 参加人数
    ///
    @JsonKey(name: "membersNum", fromJson: MembersNum.fromJson)
        required MembersNum membersNum,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}

@freezed
class MembersNum with _$MembersNum {
  const factory MembersNum({
    @JsonKey(name: "maxMenNum") required int maxMenNum,
    @JsonKey(name: "menNum") required int menNum,
    @JsonKey(name: "maxWomenNum") required int maxWomenNum,
    @JsonKey(name: "womenNum") required int womenNum,
  }) = _MembersNum;

  factory MembersNum.fromJson(Map<String, dynamic> json) =>
      _$MembersNumFromJson(json);
}
