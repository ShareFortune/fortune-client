// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_v1_users_id_profiles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostV1UsersIdProfilesRequest _$$_PostV1UsersIdProfilesRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PostV1UsersIdProfilesRequest(
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

Map<String, dynamic> _$$_PostV1UsersIdProfilesRequestToJson(
        _$_PostV1UsersIdProfilesRequest instance) =>
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

_$_PostV1UsersIdProfilesResponse _$$_PostV1UsersIdProfilesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PostV1UsersIdProfilesResponse(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_PostV1UsersIdProfilesResponseToJson(
        _$_PostV1UsersIdProfilesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
