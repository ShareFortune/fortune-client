// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      id: json['id'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      mainImageURL: json['mainImageURL'] as String,
      gender: const GenderConverter().fromJson(json['gender'] as String),
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      height: json['height'] as int?,
      drinkFrequency: _$JsonConverterFromJson<String, DrinkFrequency>(
          json['drinkFrequency'], const DrinkFrequencyConverter().fromJson),
      cigaretteFrequency: _$JsonConverterFromJson<String, CigaretteFrequency>(
          json['cigaretteFrequency'],
          const CigaretteFrequencyConverter().fromJson),
      selfIntroduction: json['selfIntroduction'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'mainImageURL': instance.mainImageURL,
      'gender': const GenderConverter().toJson(instance.gender),
      'address': instance.address,
      'height': instance.height,
      'drinkFrequency': _$JsonConverterToJson<String, DrinkFrequency>(
          instance.drinkFrequency, const DrinkFrequencyConverter().toJson),
      'cigaretteFrequency': _$JsonConverterToJson<String, CigaretteFrequency>(
          instance.cigaretteFrequency,
          const CigaretteFrequencyConverter().toJson),
      'selfIntroduction': instance.selfIntroduction,
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
