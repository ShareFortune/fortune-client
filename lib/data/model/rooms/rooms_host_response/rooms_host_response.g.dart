// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_host_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomsHostResponse _$$_RoomsHostResponseFromJson(Map<String, dynamic> json) =>
    _$_RoomsHostResponse(
      nextToken: json['nextToken'] as String,
      rooms: (json['rooms'] as List<dynamic>)
          .map((e) => RoomsHostResponseRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoomsHostResponseToJson(
        _$_RoomsHostResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'rooms': instance.rooms,
    };

_$_RoomsHostResponseRoom _$$_RoomsHostResponseRoomFromJson(
        Map<String, dynamic> json) =>
    _$_RoomsHostResponseRoom(
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

Map<String, dynamic> _$$_RoomsHostResponseRoomToJson(
        _$_RoomsHostResponseRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'participantMainImageURLs': instance.participantMainImageURLs,
      'address': instance.address,
      'membersNum': instance.membersNum,
      'joinRequestsCount': instance.joinRequestsCount,
      'status': const RoomStatusConverter().toJson(instance.status),
    };
