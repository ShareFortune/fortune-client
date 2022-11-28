// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomList _$$_RoomListFromJson(Map<String, dynamic> json) => _$_RoomList(
      nextToken: json['nextToken'] as String,
      rooms: (json['rooms'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_RoomListToJson(_$_RoomList instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'rooms': instance.rooms,
    };
