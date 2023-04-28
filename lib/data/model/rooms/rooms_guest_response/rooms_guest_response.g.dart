// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_guest_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomsGuestResponse _$$_RoomsGuestResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RoomsGuestResponse(
      nextToken: json['nextToken'] as String,
      rooms: (json['rooms'] as List<dynamic>)
          .map(
              (e) => RoomsGuestResponseRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoomsGuestResponseToJson(
        _$_RoomsGuestResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'rooms': instance.rooms,
    };

_$_GetV1RoomsGuestResponseRoom _$$_GetV1RoomsGuestResponseRoomFromJson(
        Map<String, dynamic> json) =>
    _$_GetV1RoomsGuestResponseRoom(
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
      roomStatus:
          const RoomStatusConverter().fromJson(json['roomStatus'] as String),
      joinRequestStatus: const JoinRequestStatusConverter()
          .fromJson(json['joinRequestStatus'] as String),
    );

Map<String, dynamic> _$$_GetV1RoomsGuestResponseRoomToJson(
        _$_GetV1RoomsGuestResponseRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'hostMainImageURL': instance.hostMainImageURL,
      'participantMainImageURLs': instance.participantMainImageURLs,
      'address': instance.address,
      'membersNum': instance.membersNum,
      'roomStatus': const RoomStatusConverter().toJson(instance.roomStatus),
      'joinRequestStatus':
          const JoinRequestStatusConverter().toJson(instance.joinRequestStatus),
    };
