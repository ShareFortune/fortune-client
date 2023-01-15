// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_room_as_guest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParticipantRoomAsGuest _$$_ParticipantRoomAsGuestFromJson(
        Map<String, dynamic> json) =>
    _$_ParticipantRoomAsGuest(
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
      roomStatus: $enumDecode(_$RoomStatusEnumMap, json['roomStatus']),
      joinRequestStatus: $enumDecode(
          _$RoomJoinRequestStatusEnumMap, json['joinRequestStatus']),
    );

Map<String, dynamic> _$$_ParticipantRoomAsGuestToJson(
        _$_ParticipantRoomAsGuest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'hostMainImageURL': instance.hostMainImageURL,
      'participantMainImageURLs': instance.participantMainImageURLs,
      'address': instance.address,
      'membersNum': instance.membersNum,
      'roomStatus': _$RoomStatusEnumMap[instance.roomStatus]!,
      'joinRequestStatus':
          _$RoomJoinRequestStatusEnumMap[instance.joinRequestStatus]!,
    };

const _$RoomStatusEnumMap = {
  RoomStatus.pending: 'pending',
  RoomStatus.opend: 'opend',
  RoomStatus.closed: 'closed',
};

const _$RoomJoinRequestStatusEnumMap = {
  RoomJoinRequestStatus.accepted: 'accepted',
  RoomJoinRequestStatus.rejected: 'rejected',
  RoomJoinRequestStatus.pending: 'pending',
  RoomJoinRequestStatus.canceled: 'canceled',
};
