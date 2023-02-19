// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_v1_tags.freezed.dart';
part 'get_v1_tags.g.dart';

@freezed
class GetV1TagsResponse with _$GetV1TagsResponse {
  const factory GetV1TagsResponse({
    @JsonKey(name: 'nextToken') required String name,
    @JsonKey(name: 'tags') required List<Tag> data,
  }) = _GetV1TagsResponse;

  factory GetV1TagsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetV1TagsResponseFromJson(json);
}
