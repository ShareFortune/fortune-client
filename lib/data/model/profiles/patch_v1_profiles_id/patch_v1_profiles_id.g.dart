// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_v1_profiles_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatchV1ProfilesIdRequest _$$_PatchV1ProfilesIdRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PatchV1ProfilesIdRequest(
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

Map<String, dynamic> _$$_PatchV1ProfilesIdRequestToJson(
        _$_PatchV1ProfilesIdRequest instance) =>
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

_$_PatchV1ProfilesIdResponse _$$_PatchV1ProfilesIdResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PatchV1ProfilesIdResponse(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_PatchV1ProfilesIdResponseToJson(
        _$_PatchV1ProfilesIdResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
