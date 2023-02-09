// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_v1_tags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetV1TagsResponse _$$_GetV1TagsResponseFromJson(Map<String, dynamic> json) =>
    _$_GetV1TagsResponse(
      name: json['nextToken'] as String,
      data: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetV1TagsResponseToJson(
        _$_GetV1TagsResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.name,
      'tags': instance.data,
    };
