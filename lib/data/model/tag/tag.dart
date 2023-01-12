// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class Tags with _$Tags {
  const factory Tags({
    @JsonKey(name: 'nextToken') required String name,
    @JsonKey(name: 'tags') required List<Tag> data,
  }) = _Tags;

  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);
}

@freezed
class Tag with _$Tag {
  const factory Tag({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
