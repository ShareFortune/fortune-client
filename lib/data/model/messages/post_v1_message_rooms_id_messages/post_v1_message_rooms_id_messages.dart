// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_v1_message_rooms_id_messages.freezed.dart';
part 'post_v1_message_rooms_id_messages.g.dart';

@freezed
class PostV1MessageRoomsIdMessagesRequest
    with _$PostV1MessageRoomsIdMessagesRequest {
  const factory PostV1MessageRoomsIdMessagesRequest({
    @JsonKey(name: 'text') required String text,
  }) = _PostV1MessageRoomsIdMessagesRequest;

  factory PostV1MessageRoomsIdMessagesRequest.fromJson(
          Map<String, dynamic> json) =>
      _$PostV1MessageRoomsIdMessagesRequestFromJson(json);
}

@freezed
class PostV1MessageRoomsIdMessagesResponse
    with _$PostV1MessageRoomsIdMessagesResponse {
  const factory PostV1MessageRoomsIdMessagesResponse({
    @JsonKey(name: 'id') required String id,
  }) = _PostV1MessageRoomsIdMessagesResponse;

  factory PostV1MessageRoomsIdMessagesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$PostV1MessageRoomsIdMessagesResponseFromJson(json);
}
