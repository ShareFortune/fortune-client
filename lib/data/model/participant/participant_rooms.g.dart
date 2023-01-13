// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParticipantRooms<T> _$ParticipantRoomsFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ParticipantRooms<T>(
      json['nextToken'] as String,
      (json['rooms'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$ParticipantRoomsToJson<T>(
  ParticipantRooms<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'rooms': instance.rooms.map(toJsonT).toList(),
    };

_$_ParticipantRoomAsHost _$$_ParticipantRoomAsHostFromJson(
        Map<String, dynamic> json) =>
    _$_ParticipantRoomAsHost(
      id: json['id'] as String,
      roomName: json['roomName'] as String,
      participantMainImageURLs:
          (json['participantMainImageURLs'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      membersNum:
          MembersNum.fromJson(json['membersNum'] as Map<String, dynamic>),
      joinRequestsCount: json['joinRequestsCount'] as int,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_ParticipantRoomAsHostToJson(
        _$_ParticipantRoomAsHost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'participantMainImageURLs': instance.participantMainImageURLs,
      'membersNum': instance.membersNum,
      'joinRequestsCount': instance.joinRequestsCount,
      'status': instance.status,
    };
