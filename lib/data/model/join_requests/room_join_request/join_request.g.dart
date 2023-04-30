// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JoinRequest _$$_JoinRequestFromJson(Map<String, dynamic> json) =>
    _$_JoinRequest(
      id: json['id'] as String,
      name: json['name'] as String,
      userId: json['userId'] as String,
      userImageURL: json['userImageURL'] as String,
    );

Map<String, dynamic> _$$_JoinRequestToJson(_$_JoinRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'userId': instance.userId,
      'userImageURL': instance.userImageURL,
    };
