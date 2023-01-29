// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_v1_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostV1UsersRequest _$$_PostV1UsersRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PostV1UsersRequest(
      firebaseId: json['firebaseId'] as String,
      username: json['username'] as String,
      birthday: json['birthday'] as String,
    );

Map<String, dynamic> _$$_PostV1UsersRequestToJson(
        _$_PostV1UsersRequest instance) =>
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
