// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_profile_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileForm _$$_ProfileFormFromJson(Map<String, dynamic> json) =>
    _$_ProfileForm(
      name: json['name'] as String,
      gender: json['gender'] as String,
      images: json['files'] as Map<String, dynamic>,
      addressId: json['addressId'] as int,
      height: json['height'] as int?,
      drinkFrequency: json['drinkFrequency'] as String?,
      cigaretteFrequency: json['cigaretteFrequency'] as String?,
      selfIntroduction: json['selfIntroduction'] as String?,
      occupationId: json['occupationId'] as int?,
      tagIds:
          (json['tagIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProfileFormToJson(_$_ProfileForm instance) =>
    <String, dynamic>{
      'name': instance.name,
      'gender': instance.gender,
      'files': instance.images,
      'addressId': instance.addressId,
      'height': instance.height,
      'drinkFrequency': instance.drinkFrequency,
      'cigaretteFrequency': instance.cigaretteFrequency,
      'selfIntroduction': instance.selfIntroduction,
      'occupationId': instance.occupationId,
      'tagIds': instance.tagIds,
    };
