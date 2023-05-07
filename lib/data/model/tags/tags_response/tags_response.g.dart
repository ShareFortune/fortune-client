// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TagIdResponse _$$_TagIdResponseFromJson(Map<String, dynamic> json) =>
    _$_TagIdResponse(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_TagIdResponseToJson(_$_TagIdResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_TagsResponse _$$_TagsResponseFromJson(Map<String, dynamic> json) =>
    _$_TagsResponse(
      nextToken: json['nextToken'] as String,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TagsResponseToJson(_$_TagsResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'tags': instance.tags,
    };
