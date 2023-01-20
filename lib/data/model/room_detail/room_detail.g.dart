// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomDetail _$$_RoomDetailFromJson(Map<String, dynamic> json) =>
    _$_RoomDetail(
      id: json['id'] as String,
      title: json['roomName'] as String,
      applicationDeadline: json['applicationDeadline'] as String,
      hostUser:
          ParticipatingUser.fromJson(json['hostUser'] as Map<String, dynamic>),
      participants: (json['participants'] as List<dynamic>?)
          ?.map((e) => ParticipatingUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: const RoomStatusConverter().fromJson(json['status'] as String),
      joinRequestStatus: _$JsonConverterFromJson<String, RoomJoinRequestStatus>(
          json['joinRequestStatus'],
          const RoomJoinRequestStatusConverter().fromJson),
      membersNum: json['membersNum'] as int,
      isHost: json['isHost'] as bool,
      isMember: json['isMember'] as bool,
    );

Map<String, dynamic> _$$_RoomDetailToJson(_$_RoomDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomName': instance.title,
      'applicationDeadline': instance.applicationDeadline,
      'hostUser': instance.hostUser,
      'participants': instance.participants,
      'address': instance.address,
      'tags': instance.tags,
      'status': const RoomStatusConverter().toJson(instance.status),
      'joinRequestStatus': _$JsonConverterToJson<String, RoomJoinRequestStatus>(
          instance.joinRequestStatus,
          const RoomJoinRequestStatusConverter().toJson),
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
