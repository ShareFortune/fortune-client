import 'package:fortune_client/data/model/rooms/room/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rooms_response.freezed.dart';
part 'rooms_response.g.dart';

@freezed
class RoomIdResponse with _$RoomIdResponse {
  const factory RoomIdResponse({required String id}) = _RoomIdResponse;

  factory RoomIdResponse.fromJson(Map<String, dynamic> json) =>
      _$RoomIdResponseFromJson(json);
}

@freezed
class RoomsResponse with _$RoomsResponse {
  const factory RoomsResponse({
    required String nextToken,
    required List<Room> rooms,
  }) = _RoomsResponse;

  factory RoomsResponse.fromJson(Map<String, dynamic> json) =>
      _$RoomsResponseFromJson(json);
}
