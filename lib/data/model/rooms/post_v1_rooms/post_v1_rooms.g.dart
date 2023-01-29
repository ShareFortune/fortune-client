// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_v1_rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostV1RoomsRequest _$$_PostV1RoomsRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PostV1RoomsRequest(
      roomName: json['roomName'] as String,
      applicationDeadline: json['applicationDeadline'] as String,
      membersNum: json['membersNum'] as int,
      ageGroup: const AgeGroupConverter().fromJson(json['ageGroup'] as String),
      addressId: json['addressId'] as int,
      explanation: json['explanation'] as String,
      tagIds: (json['tagIds'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostV1RoomsRequestToJson(
        _$_PostV1RoomsRequest instance) =>
    <String, dynamic>{
      'roomName': instance.roomName,
      'applicationDeadline': instance.applicationDeadline,
      'membersNum': instance.membersNum,
      'ageGroup': const AgeGroupConverter().toJson(instance.ageGroup),
      'addressId': instance.addressId,
      'explanation': instance.explanation,
      'tagIds': instance.tagIds,
    };
