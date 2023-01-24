// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JoinRequests _$$_JoinRequestsFromJson(Map<String, dynamic> json) =>
    _$_JoinRequests(
      nextToken: json['nextToken'] as String,
      joinRequests: (json['joinRequests'] as List<dynamic>)
          .map((e) => JoinRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_JoinRequestsToJson(_$_JoinRequests instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'joinRequests': instance.joinRequests,
    };

_$_JoinRequest _$$_JoinRequestFromJson(Map<String, dynamic> json) =>
    _$_JoinRequest(
      name: json['name'] as String,
      userId: json['userId'] as String,
      userImageUrl: json['userImageUrl'] as String,
    );

Map<String, dynamic> _$$_JoinRequestToJson(_$_JoinRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userId': instance.userId,
      'userImageUrl': instance.userImageUrl,
    };
