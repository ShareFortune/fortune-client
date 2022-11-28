import 'package:freezed_annotation/freezed_annotation.dart';

part 'host_room.freezed.dart';
part 'host_room.g.dart';

@freezed
class HostRoomList with _$HostRoomList {
  const HostRoomList._();
  const factory HostRoomList({
    required List<Map<String, dynamic>> rooms,
  }) = _HostRoomList;

  List<HostRoom> get roomsEntity =>
      rooms.map((e) => HostRoom.fromJson(e)).toList();

  factory HostRoomList.fromJson(Map<String, dynamic> json) =>
      _$HostRoomListFromJson(json);
}

@freezed
class HostRoom with _$HostRoom {
  const factory HostRoom({
    /// ルームネーム
    required String roomName,

    /// メンバー画像リスト
    required List<String> participantMainImageURLs,

    /// アクション件数
    required int action,
  }) = _HostRoom;

  factory HostRoom.fromJson(Map<String, dynamic> json) =>
      _$HostRoomFromJson(json);
}
