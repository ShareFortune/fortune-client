// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JoinRequestsResponse _$$_JoinRequestsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_JoinRequestsResponse(
      nextToken: json['nextToken'] as String,
      joinRequests: (json['joinRequests'] as List<dynamic>)
          .map((e) => JoinRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_JoinRequestsResponseToJson(
        _$_JoinRequestsResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'joinRequests': instance.joinRequests,
    };

_$_JoinRequest _$$_JoinRequestFromJson(Map<String, dynamic> json) =>
    _$_JoinRequest(
      name: json['name'] as String,
      userId: json['userId'] as String,
      userImageUrl: json['userImageURL'] as String,
    );

Map<String, dynamic> _$$_JoinRequestToJson(_$_JoinRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userId': instance.userId,
      'userImageURL': instance.userImageUrl,
    };
