// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_v1_rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetV1RoomsResponse _$$_GetV1RoomsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetV1RoomsResponse(
      nextToken: json['nextToken'] as String,
      data: (json['rooms'] as List<dynamic>)
          .map(
              (e) => GetV1RoomsResponseRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetV1RoomsResponseToJson(
        _$_GetV1RoomsResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'rooms': instance.data,
    };

_$_GetV1RoomsResponseRoom _$$_GetV1RoomsResponseRoomFromJson(
        Map<String, dynamic> json) =>
    _$_GetV1RoomsResponseRoom(
      id: json['id'] as String,
      roomName: json['roomName'] as String,
      hostMainImageURL: json['hostUser'] as String,
      participantMainImageURLs: (json['participants'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      membersNum:
          MembersNum.fromJson(json['membersNum'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool,
    );

Map<String, dynamic> _$$_GetV1RoomsResponseRoomToJson(
        _$_GetV1RoomsResponseRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'hostUser': instance.hostMainImageURL,
      'participants': instance.participantMainImageURLs,
      'address': instance.address,
      'membersNum': instance.membersNum,
      'isFavorite': instance.isFavorite,
    };
