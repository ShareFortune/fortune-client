// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomIdResponse _$$_RoomIdResponseFromJson(Map<String, dynamic> json) =>
    _$_RoomIdResponse(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_RoomIdResponseToJson(_$_RoomIdResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_RoomsResponse _$$_RoomsResponseFromJson(Map<String, dynamic> json) =>
    _$_RoomsResponse(
      nextToken: json['nextToken'] as String,
      rooms: (json['rooms'] as List<dynamic>)
          .map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoomsResponseToJson(_$_RoomsResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'rooms': instance.rooms,
    };
