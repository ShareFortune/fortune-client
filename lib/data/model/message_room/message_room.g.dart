// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageRoom _$$_MessageRoomFromJson(Map<String, dynamic> json) =>
    _$_MessageRoom(
      id: json['id'] as String,
      roomId: json['roomId'] as String,
      userIds:
          (json['userIds'] as List<dynamic>).map((e) => e as String).toList(),
      status: $enumDecode(_$RoomStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_MessageRoomToJson(_$_MessageRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomId': instance.roomId,
      'userIds': instance.userIds,
      'status': _$RoomStatusEnumMap[instance.status]!,
    };

const _$RoomStatusEnumMap = {
  RoomStatus.pending: 'pending',
  RoomStatus.opend: 'opend',
  RoomStatus.closed: 'closed',
};
