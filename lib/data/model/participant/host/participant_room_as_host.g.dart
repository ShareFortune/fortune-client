// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_room_as_host.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      status: const RoomStatusConverter().fromJson(json['status'] as String),
    );

Map<String, dynamic> _$$_ParticipantRoomAsHostToJson(
        _$_ParticipantRoomAsHost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'participantMainImageURLs': instance.participantMainImageURLs,
      'membersNum': instance.membersNum,
      'joinRequestsCount': instance.joinRequestsCount,
      'status': const RoomStatusConverter().toJson(instance.status),
    };
