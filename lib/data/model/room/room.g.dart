// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      id: json['id'] as String?,
      name: json['name'] as String,
      hostUser: Member.fromJson(json['hostUser'] as Map<String, dynamic>),
      roomStatus: $enumDecode(_$RoomStatusEnumMap, json['roomStatus']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      members: (json['members'] as List<dynamic>)
          .map((e) => Member.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hostUser': instance.hostUser,
      'roomStatus': _$RoomStatusEnumMap[instance.roomStatus]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'members': instance.members,
      'tags': instance.tags,
    };

const _$RoomStatusEnumMap = {
  RoomStatus.pending: 'pending',
  RoomStatus.opend: 'opend',
  RoomStatus.closed: 'closed',
};
