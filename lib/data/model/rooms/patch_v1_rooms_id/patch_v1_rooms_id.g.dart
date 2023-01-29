// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_v1_rooms_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatchV1RoomsIdRequest _$$_PatchV1RoomsIdRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PatchV1RoomsIdRequest(
      name: json['name'] as String,
      gender: json['gender'] as String,
      addressId: json['addressId'] as int,
      files: ProfilesFiles.fromJson(json['files'] as Map<String, dynamic>),
      height: json['height'] as int?,
      drinkFrequency: json['drinkFrequency'] as String?,
      cigaretteFrequency: json['cigaretteFrequency'] as String?,
      selfIntroduction: json['selfIntroduction'] as String?,
      occupationId: json['occupationId'] as int?,
      tagIds:
          (json['tagIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_PatchV1RoomsIdRequestToJson(
        _$_PatchV1RoomsIdRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'gender': instance.gender,
      'addressId': instance.addressId,
      'files': instance.files,
      'height': instance.height,
      'drinkFrequency': instance.drinkFrequency,
      'cigaretteFrequency': instance.cigaretteFrequency,
      'selfIntroduction': instance.selfIntroduction,
      'occupationId': instance.occupationId,
      'tagIds': instance.tagIds,
    };
