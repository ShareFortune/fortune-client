// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_v1_message_rooms_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetV1MessageRoomsResponse _$$_GetV1MessageRoomsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetV1MessageRoomsResponse(
      nextToken: json['nextToken'] as String,
      data: (json['messageRooms'] as List<dynamic>)
          .map((e) => MessageRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetV1MessageRoomsResponseToJson(
        _$_GetV1MessageRoomsResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'messageRooms': instance.data,
    };
