import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tags_response.freezed.dart';
part 'tags_response.g.dart';

@freezed
class TagIdResponse with _$TagIdResponse {
  const factory TagIdResponse({
    required String id,
  }) = _TagIdResponse;

  factory TagIdResponse.fromJson(Map<String, dynamic> json) =>
      _$TagIdResponseFromJson(json);
}

@freezed
class TagsResponse with _$TagsResponse {
  const factory TagsResponse({
    required String nextToken,
    required List<Tag> tags,
  }) = _TagsResponse;

  factory TagsResponse.fromJson(Map<String, dynamic> json) =>
      _$TagsResponseFromJson(json);
}
