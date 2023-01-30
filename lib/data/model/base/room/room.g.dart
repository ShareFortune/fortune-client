// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      id: json['id'] as String,
      roomName: json['roomName'] as String,
      applicationDeadline: json['applicationDeadline'] as String,
      hostUser: FortuneUser.fromJson(json['hostUser'] as Map<String, dynamic>),
      participants: (json['participants'] as List<dynamic>?)
          ?.map((e) => FortuneUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      roomStatus:
          const RoomStatusConverter().fromJson(json['roomStatus'] as String),
      joinRequestStatus: _$JsonConverterFromJson<String, JoinRequestStatus>(
          json['joinRequestStatus'],
          const JoinRequestStatusConverter().fromJson),
      membersNum:
          MembersNum.fromJson(json['membersNum'] as Map<String, dynamic>),
      isHost: json['isHost'] as bool,
      isMember: json['isMember'] as bool,
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'applicationDeadline': instance.applicationDeadline,
      'hostUser': instance.hostUser,
      'participants': instance.participants,
      'address': instance.address,
      'tags': instance.tags,
      'roomStatus': const RoomStatusConverter().toJson(instance.roomStatus),
      'joinRequestStatus': _$JsonConverterToJson<String, JoinRequestStatus>(
          instance.joinRequestStatus,
          const JoinRequestStatusConverter().toJson),
      'membersNum': instance.membersNum,
      'isHost': instance.isHost,
      'isMember': instance.isMember,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
