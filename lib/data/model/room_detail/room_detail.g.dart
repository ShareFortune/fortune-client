// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomDetail _$$_RoomDetailFromJson(Map<String, dynamic> json) =>
    _$_RoomDetail(
      id: json['id'] as String,
      isHost: json['isHost'] as bool,
      isMember: json['isMember'] as bool,
      membersNum: json['membersNum'] as int,
      participants: json['participants'] as List<dynamic>,
      roomName: json['roomName'] as String,
      status: json['status'] as String,
      tags: json['tags'] as List<dynamic>,
      applicationDeadline: json['applicationDeadline'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      hostUser: FortuneUser.fromJson(json['hostUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RoomDetailToJson(_$_RoomDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isHost': instance.isHost,
      'isMember': instance.isMember,
      'membersNum': instance.membersNum,
      'participants': instance.participants,
      'roomName': instance.roomName,
      'status': instance.status,
      'tags': instance.tags,
      'applicationDeadline': instance.applicationDeadline,
      'address': instance.address,
      'hostUser': instance.hostUser,
    };
