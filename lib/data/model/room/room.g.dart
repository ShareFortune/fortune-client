// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      id: json['id'] as String?,
      roomName: json['roomName'] as String,
      applicationDeadline: json['applicationDeadline'] as String,
      hostMainImageURL: json['hostMainImageURL'] as String,
      participantMainImageURLs:
          (json['participantMainImageURLs'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      address: json['address'] as Map<String, dynamic>,
      isHost: json['isHost'] as bool,
      isParticipant: json['isParticipant'] as bool,
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'applicationDeadline': instance.applicationDeadline,
      'hostMainImageURL': instance.hostMainImageURL,
      'participantMainImageURLs': instance.participantMainImageURLs,
      'address': instance.address,
      'isHost': instance.isHost,
      'isParticipant': instance.isParticipant,
    };
