// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tags<T> _$TagsFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    Tags<T>(
      json['nextToken'] as String,
      (json['tags'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$TagsToJson<T>(
  Tags<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'tags': instance.tags.map(toJsonT).toList(),
    };

_$_Tag _$$_TagFromJson(Map<String, dynamic> json) => _$_Tag(
      id: json['id'] as String,
      name: json['name'] as String,
      explanation: json['explanation'] as String,
    );

Map<String, dynamic> _$$_TagToJson(_$_Tag instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'explanation': instance.explanation,
    };
