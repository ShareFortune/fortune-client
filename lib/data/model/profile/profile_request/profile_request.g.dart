// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileCreateRequest _$$_ProfileCreateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileCreateRequest(
      files: json['files'] as Map<String, dynamic>,
      name: json['name'] as String,
      gender: json['gender'] as String,
      height: json['height'] as int?,
      drinkFrequency: _$JsonConverterFromJson<String, DrinkFrequency>(
          json['drinkFrequency'], const DrinkFrequencyConverter().fromJson),
      cigaretteFrequency: _$JsonConverterFromJson<String, CigaretteFrequency>(
          json['cigaretteFrequency'],
          const CigaretteFrequencyConverter().fromJson),
      selfIntroduction: json['selfIntroduction'] as String?,
      occupationId: json['occupationId'] as int?,
      addressId: json['addressId'] as int,
      tagIds:
          (json['tagIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProfileCreateRequestToJson(
        _$_ProfileCreateRequest instance) =>
    <String, dynamic>{
      'files': instance.files,
      'name': instance.name,
      'gender': instance.gender,
      'height': instance.height,
      'drinkFrequency': _$JsonConverterToJson<String, DrinkFrequency>(
          instance.drinkFrequency, const DrinkFrequencyConverter().toJson),
      'cigaretteFrequency': _$JsonConverterToJson<String, CigaretteFrequency>(
          instance.cigaretteFrequency,
          const CigaretteFrequencyConverter().toJson),
      'selfIntroduction': instance.selfIntroduction,
      'occupationId': instance.occupationId,
      'addressId': instance.addressId,
      'tagIds': instance.tagIds,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$_ProfileUpdateRequest _$$_ProfileUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileUpdateRequest(
      name: json['name'] as String,
      gender: const GenderConverter().fromJson(json['gender'] as String),
      addressId: json['addressId'] as int,
      files: ProfileFiles.fromJson(json['files'] as Map<String, dynamic>),
      height: json['height'] as int?,
      drinkFrequency: _$JsonConverterFromJson<String, DrinkFrequency>(
          json['drinkFrequency'], const DrinkFrequencyConverter().fromJson),
      cigaretteFrequency: _$JsonConverterFromJson<String, CigaretteFrequency>(
          json['cigaretteFrequency'],
          const CigaretteFrequencyConverter().fromJson),
      selfIntroduction: json['selfIntroduction'] as String?,
      occupationId: json['occupationId'] as int?,
      tagIds:
          (json['tagIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProfileUpdateRequestToJson(
        _$_ProfileUpdateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'gender': const GenderConverter().toJson(instance.gender),
      'addressId': instance.addressId,
      'files': instance.files,
      'height': instance.height,
      'drinkFrequency': _$JsonConverterToJson<String, DrinkFrequency>(
          instance.drinkFrequency, const DrinkFrequencyConverter().toJson),
      'cigaretteFrequency': _$JsonConverterToJson<String, CigaretteFrequency>(
          instance.cigaretteFrequency,
          const CigaretteFrequencyConverter().toJson),
      'selfIntroduction': instance.selfIntroduction,
      'occupationId': instance.occupationId,
      'tagIds': instance.tagIds,
    };
