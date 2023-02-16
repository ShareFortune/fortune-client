// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_v1_message_rooms_id_messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetV1MessageRoomsIdMessagesResponse
    _$$_GetV1MessageRoomsIdMessagesResponseFromJson(
            Map<String, dynamic> json) =>
        _$_GetV1MessageRoomsIdMessagesResponse(
          nextToken: json['nextToken'] as String,
          data: (json['messages'] as List<dynamic>)
              .map((e) => Message.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_GetV1MessageRoomsIdMessagesResponseToJson(
        _$_GetV1MessageRoomsIdMessagesResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'messages': instance.data,
    };
