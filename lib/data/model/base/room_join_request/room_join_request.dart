// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_join_request.freezed.dart';
part 'room_join_request.g.dart';

@freezed
class RoomJoinRequest with _$RoomJoinRequest {
  const factory RoomJoinRequest({
    @JsonKey(name: "userId") required String userId,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "userImageURL") required String userImageURL,
  }) = _RoomJoinRequest;

  factory RoomJoinRequest.fromJson(Map<String, dynamic> json) =>
      _$RoomJoinRequestFromJson(json);
}
