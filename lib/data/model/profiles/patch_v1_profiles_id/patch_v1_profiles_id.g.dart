// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_v1_profiles_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatchV1ProfilesIdRequest _$$_PatchV1ProfilesIdRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PatchV1ProfilesIdRequest(
      name: json['name'] as String,
      gender: const GenderConverter().fromJson(json['gender'] as String),
      addressId: json['addressId'] as int,
      files: ProfilesFiles.fromJson(json['files'] as Map<String, dynamic>),
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

Map<String, dynamic> _$$_PatchV1ProfilesIdRequestToJson(
        _$_PatchV1ProfilesIdRequest instance) =>
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
