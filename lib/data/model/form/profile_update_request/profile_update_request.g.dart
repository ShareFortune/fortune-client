// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileUpdateRequest _$$_ProfileUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileUpdateRequest(
      name: json['name'] as String,
      gender: json['gender'] as String,
      addressId: json['addressId'] as int,
      files:
          ProfileFilesRequest.fromJson(json['files'] as Map<String, dynamic>),
      height: json['height'] as int?,
      drinkFrequency: json['drinkFrequency'] as String?,
      cigaretteFrequency: json['cigaretteFrequency'] as String?,
      selfIntroduction: json['selfIntroduction'] as String?,
      occupationId: json['occupationId'] as int?,
      tagIds:
          (json['tagIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProfileUpdateRequestToJson(
        _$_ProfileUpdateRequest instance) =>
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
