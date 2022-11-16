// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as String,
      messageRoomId: json['messageRoomId'] as String,
      userId: json['userId'] as String,
      text: json['text'] as String,
      isDeleted: json['isDeleted'] as bool,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'messageRoomId': instance.messageRoomId,
      'userId': instance.userId,
      'text': instance.text,
      'isDeleted': instance.isDeleted,
    };
