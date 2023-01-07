import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class Tags<T> {
  Tags(this.nextToken, this.tags);

  @JsonKey(name: 'nextToken')
  String nextToken;

  @JsonKey(name: 'tags')
  List<T> tags;

  factory Tags.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$TagsFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T value) toJsonT) {
    return _$TagsToJson<T>(this, toJsonT);
  }
}

@freezed
class Tag with _$Tag {
  const factory Tag({
    required String id,
    required String name,
    required String explanation,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
