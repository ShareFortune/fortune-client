// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_v1_room_join_requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetV1RoomJoinRequestsResponse _$$_GetV1RoomJoinRequestsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetV1RoomJoinRequestsResponse(
      nextToken: json['nextToken'] as String,
      joinRequests: json['joinRequests'] as String,
    );

Map<String, dynamic> _$$_GetV1RoomJoinRequestsResponseToJson(
        _$_GetV1RoomJoinRequestsResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'joinRequests': instance.joinRequests,
    };
