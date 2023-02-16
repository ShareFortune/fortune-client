// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_v1_message_rooms_id_message_images.freezed.dart';
part 'post_v1_message_rooms_id_message_images.g.dart';

@freezed
class PostV1MessageRoomsIdMessageImagesRequest
    with _$PostV1MessageRoomsIdMessageImagesRequest {
  const factory PostV1MessageRoomsIdMessageImagesRequest(
    @JsonKey(name: 'file') String file,
  ) = _PostV1MessageRoomsIdMessageImagesRequest;

  factory PostV1MessageRoomsIdMessageImagesRequest.fromJson(
          Map<String, dynamic> json) =>
      _$PostV1MessageRoomsIdMessageImagesRequestFromJson(json);
}

@freezed
class PostV1MessageRoomsIdMessageImagesResponse
    with _$PostV1MessageRoomsIdMessageImagesResponse {
  const factory PostV1MessageRoomsIdMessageImagesResponse({
    @JsonKey(name: 'id') required String id,
  }) = _PostV1MessageRoomsIdMessageImagesResponse;

  factory PostV1MessageRoomsIdMessageImagesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$PostV1MessageRoomsIdMessageImagesResponseFromJson(json);
}
