// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_v1_rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetV1RoomsResponse _$$_GetV1RoomsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetV1RoomsResponse(
      nextToken: json['nextToken'] as String,
      data: (json['rooms'] as List<dynamic>)
          .map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetV1RoomsResponseToJson(
        _$_GetV1RoomsResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'rooms': instance.data,
    };
