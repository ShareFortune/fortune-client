// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_requests_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JoinRequestIdResponse _$$_JoinRequestIdResponseFromJson(
        Map<String, dynamic> json) =>
    _$_JoinRequestIdResponse(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_JoinRequestIdResponseToJson(
        _$_JoinRequestIdResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_JoinRequestsResponse _$$_JoinRequestsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_JoinRequestsResponse(
      nextToken: json['nextToken'] as String,
      joinRequests: (json['joinRequests'] as List<dynamic>)
          .map((e) => RoomJoinRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_JoinRequestsResponseToJson(
        _$_JoinRequestsResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'joinRequests': instance.joinRequests,
    };

_$_RoomJoinRequest _$$_RoomJoinRequestFromJson(Map<String, dynamic> json) =>
    _$_RoomJoinRequest(
      id: json['id'] as String,
      name: json['name'] as String,
      userId: json['userId'] as String,
      userImageURL: json['userImageURL'] as String,
    );

Map<String, dynamic> _$$_RoomJoinRequestToJson(_$_RoomJoinRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'userId': instance.userId,
      'userImageURL': instance.userImageURL,
    };
