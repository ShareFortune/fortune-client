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
          .map((e) => JoinRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_JoinRequestsResponseToJson(
        _$_JoinRequestsResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'joinRequests': instance.joinRequests,
    };
