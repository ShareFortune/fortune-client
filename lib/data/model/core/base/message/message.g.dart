// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as String,
      sendAt: DateTime.parse(json['sentAt'] as String),
      text: json['text'] as String,
      messageIamageURL: json['messageIamageURL'] as String?,
      fromUser:
          MessageFromUser.fromJson(json['fromUser'] as Map<String, dynamic>),
      readCount: json['readCount'] as int,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sentAt': instance.sendAt.toIso8601String(),
      'text': instance.text,
      'messageIamageURL': instance.messageIamageURL,
      'fromUser': instance.fromUser,
      'readCount': instance.readCount,
    };
