// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_join_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomJoinRequest _$$_RoomJoinRequestFromJson(Map<String, dynamic> json) =>
    _$_RoomJoinRequest(
      userId: json['userId'] as String,
      name: json['name'] as String,
      userImageURL: json['userImageURL'] as String,
    );

Map<String, dynamic> _$$_RoomJoinRequestToJson(_$_RoomJoinRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'userImageURL': instance.userImageURL,
    };
