// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_room_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateRoomForm _$$_CreateRoomFormFromJson(Map<String, dynamic> json) =>
    _$_CreateRoomForm(
      roomName: json['roomName'] as String,
      applicationDeadline: json['applicationDeadline'] as String,
      membersNum: json['membersNum'] as int,
      ageGroup: const AgeGroupConverter().fromJson(json['ageGroup'] as String),
      addressId: json['addressId'] as int,
      tagIds: (json['tagIds'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      explanation: json['explanation'] as String,
    );

Map<String, dynamic> _$$_CreateRoomFormToJson(_$_CreateRoomForm instance) =>
    <String, dynamic>{
      'roomName': instance.roomName,
      'applicationDeadline': instance.applicationDeadline,
      'membersNum': instance.membersNum,
      'ageGroup': const AgeGroupConverter().toJson(instance.ageGroup),
      'addressId': instance.addressId,
      'tagIds': instance.tagIds,
      'explanation': instance.explanation,
    };
