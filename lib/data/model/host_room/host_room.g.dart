// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HostRoomList _$$_HostRoomListFromJson(Map<String, dynamic> json) =>
    _$_HostRoomList(
      rooms: (json['rooms'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_HostRoomListToJson(_$_HostRoomList instance) =>
    <String, dynamic>{
      'rooms': instance.rooms,
    };

_$_HostRoom _$$_HostRoomFromJson(Map<String, dynamic> json) => _$_HostRoom(
      roomName: json['roomName'] as String,
      participantMainImageURLs:
          (json['participantMainImageURLs'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      action: json['action'] as int,
    );

Map<String, dynamic> _$$_HostRoomToJson(_$_HostRoom instance) =>
    <String, dynamic>{
      'roomName': instance.roomName,
      'participantMainImageURLs': instance.participantMainImageURLs,
      'action': instance.action,
    };
