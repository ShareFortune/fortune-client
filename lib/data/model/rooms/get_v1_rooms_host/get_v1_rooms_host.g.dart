// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_v1_rooms_host.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetV1RoomsHostResponse _$$_GetV1RoomsHostResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetV1RoomsHostResponse(
      nextToken: json['nextToken'] as String,
      data: (json['rooms'] as List<dynamic>)
          .map((e) =>
              GetV1RoomsHostResponseRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetV1RoomsHostResponseToJson(
        _$_GetV1RoomsHostResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'rooms': instance.data,
    };

_$_GetV1RoomsHostResponseRoom _$$_GetV1RoomsHostResponseRoomFromJson(
        Map<String, dynamic> json) =>
    _$_GetV1RoomsHostResponseRoom(
      id: json['id'] as String,
      roomName: json['roomName'] as String,
      participantMainImageURLs:
          (json['participantMainImageURLs'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      membersNum:
          MembersNum.fromJson(json['membersNum'] as Map<String, dynamic>),
      joinRequestsCount: json['joinRequestsCount'] as int,
      status: const RoomStatusConverter().fromJson(json['status'] as String),
    );

Map<String, dynamic> _$$_GetV1RoomsHostResponseRoomToJson(
        _$_GetV1RoomsHostResponseRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'participantMainImageURLs': instance.participantMainImageURLs,
      'address': instance.address,
      'membersNum': instance.membersNum,
      'joinRequestsCount': instance.joinRequestsCount,
      'status': const RoomStatusConverter().toJson(instance.status),
    };
