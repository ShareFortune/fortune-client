// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_v1_profiles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetV1ProfilesResponse _$$_GetV1ProfilesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetV1ProfilesResponse(
      id: json['id'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      mainImageURL: json['mainImageURL'] as String,
      secondImageURL: json['secondImageURL'] as String?,
      thirdImageURL: json['thirdImageURL'] as String?,
      fourthImageURL: json['fourthImageURL'] as String?,
      fifthImageURL: json['fifthImageURL'] as String?,
      sixthImageURL: json['sixthImageURL'] as String?,
      gender: const GenderConverter().fromJson(json['gender'] as String),
      height: json['height'] as int?,
      drinkFrequency: _$JsonConverterFromJson<String, DrinkFrequency>(
          json['drinkFrequency'], const DrinkFrequencyConverter().fromJson),
      cigaretteFrequency: _$JsonConverterFromJson<String, CigaretteFrequency>(
          json['cigaretteFrequency'],
          const CigaretteFrequencyConverter().fromJson),
      selfIntroduction: json['selfIntroduction'] as String?,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetV1ProfilesResponseToJson(
        _$_GetV1ProfilesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'mainImageURL': instance.mainImageURL,
      'secondImageURL': instance.secondImageURL,
      'thirdImageURL': instance.thirdImageURL,
      'fourthImageURL': instance.fourthImageURL,
      'fifthImageURL': instance.fifthImageURL,
      'sixthImageURL': instance.sixthImageURL,
      'gender': const GenderConverter().toJson(instance.gender),
      'height': instance.height,
      'drinkFrequency': _$JsonConverterToJson<String, DrinkFrequency>(
          instance.drinkFrequency, const DrinkFrequencyConverter().toJson),
      'cigaretteFrequency': _$JsonConverterToJson<String, CigaretteFrequency>(
          instance.cigaretteFrequency,
          const CigaretteFrequencyConverter().toJson),
      'selfIntroduction': instance.selfIntroduction,
      'address': instance.address,
      'tags': instance.tags,
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
