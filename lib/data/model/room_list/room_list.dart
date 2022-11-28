import 'package:fortune_client/data/model/room/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_list.freezed.dart';
part 'room_list.g.dart';

@freezed
class RoomList with _$RoomList {
  const RoomList._();
  const factory RoomList({
    required String nextToken,
    required List<Map<String, dynamic>> rooms,
  }) = _RoomList;

  List<Room> get roomsEntity => rooms.map((e) => Room.fromJson(e)).toList();

  factory RoomList.fromJson(Map<String, dynamic> json) =>
      _$RoomListFromJson(json);
}
