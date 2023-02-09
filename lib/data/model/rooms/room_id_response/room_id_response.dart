// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_id_response.freezed.dart';
part 'room_id_response.g.dart';

@freezed
class RoomIdResponse with _$RoomIdResponse {
  const factory RoomIdResponse({
    @JsonKey(name: 'id') required String id,
  }) = _RoomIdResponse;

  factory RoomIdResponse.fromJson(Map<String, dynamic> json) =>
      _$RoomIdResponseFromJson(json);
}
