// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessagesRequest _$$_MessagesRequestFromJson(Map<String, dynamic> json) =>
    _$_MessagesRequest(
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_MessagesRequestToJson(_$_MessagesRequest instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

_$_ImageMessagesRequest _$$_ImageMessagesRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ImageMessagesRequest(
      file: json['file'] as String,
    );

Map<String, dynamic> _$$_ImageMessagesRequestToJson(
        _$_ImageMessagesRequest instance) =>
    <String, dynamic>{
      'file': instance.file,
    };
