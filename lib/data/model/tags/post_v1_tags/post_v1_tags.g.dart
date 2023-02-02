// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_v1_tags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostV1TagsRequest _$$_PostV1TagsRequestFromJson(Map<String, dynamic> json) =>
    _$_PostV1TagsRequest(
      name: json['nextToken'] as String,
      explanation: json['explanation'] as String,
    );

Map<String, dynamic> _$$_PostV1TagsRequestToJson(
        _$_PostV1TagsRequest instance) =>
    <String, dynamic>{
      'nextToken': instance.name,
      'explanation': instance.explanation,
    };

_$_PostV1TagsResponse _$$_PostV1TagsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PostV1TagsResponse(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_PostV1TagsResponseToJson(
        _$_PostV1TagsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
