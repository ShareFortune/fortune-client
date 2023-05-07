// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageIdResponse _$$_MessageIdResponseFromJson(Map<String, dynamic> json) =>
    _$_MessageIdResponse(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_MessageIdResponseToJson(
        _$_MessageIdResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_ImageMessageIdResponse _$$_ImageMessageIdResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ImageMessageIdResponse(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_ImageMessageIdResponseToJson(
        _$_ImageMessageIdResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_MessagesResponse _$$_MessagesResponseFromJson(Map<String, dynamic> json) =>
    _$_MessagesResponse(
      nextToken: json['nextToken'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MessagesResponseToJson(_$_MessagesResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'messages': instance.messages,
    };
