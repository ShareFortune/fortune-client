// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/base/room/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_v1_rooms.freezed.dart';
part 'get_v1_rooms.g.dart';

@freezed
class GetV1RoomsResponse with _$GetV1RoomsResponse {
  const factory GetV1RoomsResponse({
    @JsonKey(name: "nextToken") required String nextToken,
    @JsonKey(name: "rooms") required List<Room> data,
  }) = _GetV1RoomsResponse;

  factory GetV1RoomsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetV1RoomsResponseFromJson(json);
}
