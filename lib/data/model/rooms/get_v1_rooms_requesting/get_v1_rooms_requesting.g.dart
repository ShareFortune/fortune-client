// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_v1_rooms_requesting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetV1RoomsRequestingResponse _$$_GetV1RoomsRequestingResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetV1RoomsRequestingResponse(
      nextToken: json['nextToken'] as String,
      data: (json['rooms'] as List<dynamic>)
          .map((e) => GetV1RoomsRequestingResponseRoom.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetV1RoomsRequestingResponseToJson(
        _$_GetV1RoomsRequestingResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'rooms': instance.data,
    };

_$_GetV1RoomsRequestingResponseRoom
    _$$_GetV1RoomsRequestingResponseRoomFromJson(Map<String, dynamic> json) =>
        _$_GetV1RoomsRequestingResponseRoom(
          id: json['id'] as String,
          roomName: json['roomName'] as String,
          hostMainImageURL: json['hostMainImageURL'] as String,
          participantMainImageURLs:
              (json['participantMainImageURLs'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList(),
          address: Address.fromJson(json['address'] as Map<String, dynamic>),
          membersNum:
              MembersNum.fromJson(json['membersNum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_GetV1RoomsRequestingResponseRoomToJson(
        _$_GetV1RoomsRequestingResponseRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'hostMainImageURL': instance.hostMainImageURL,
      'participantMainImageURLs': instance.participantMainImageURLs,
      'address': instance.address,
      'membersNum': instance.membersNum,
    };
