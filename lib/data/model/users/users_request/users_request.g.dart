// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UsersCreateRequest _$$_UsersCreateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UsersCreateRequest(
      firebaseId: json['firebaseId'] as String,
      username: json['username'] as String,
      birthday: json['birthday'] as String,
    );

Map<String, dynamic> _$$_UsersCreateRequestToJson(
        _$_UsersCreateRequest instance) =>
    <String, dynamic>{
      'firebaseId': instance.firebaseId,
      'username': instance.username,
      'birthday': instance.birthday,
    };

_$_PostV1UsersResponse _$$_PostV1UsersResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PostV1UsersResponse(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_PostV1UsersResponseToJson(
        _$_PostV1UsersResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
