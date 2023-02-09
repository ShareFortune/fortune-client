// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_v1_tags.freezed.dart';
part 'post_v1_tags.g.dart';

@freezed
class PostV1TagsRequest with _$PostV1TagsRequest {
  const factory PostV1TagsRequest({
    @JsonKey(name: 'nextToken') required String name,
    @JsonKey(name: 'explanation') required String explanation,
  }) = _PostV1TagsRequest;

  factory PostV1TagsRequest.fromJson(Map<String, dynamic> json) =>
      _$PostV1TagsRequestFromJson(json);
}

@freezed
class PostV1TagsResponse with _$PostV1TagsResponse {
  const factory PostV1TagsResponse({
    @JsonKey(name: 'id') required String id,
  }) = _PostV1TagsResponse;

  factory PostV1TagsResponse.fromJson(Map<String, dynamic> json) =>
      _$PostV1TagsResponseFromJson(json);
}
