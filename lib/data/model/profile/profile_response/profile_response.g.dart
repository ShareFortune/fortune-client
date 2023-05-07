// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileIdResponse _$$_ProfileIdResponseFromJson(Map<String, dynamic> json) =>
    _$_ProfileIdResponse(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_ProfileIdResponseToJson(
        _$_ProfileIdResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_ProfileResponse _$$_ProfileResponseFromJson(Map<String, dynamic> json) =>
    _$_ProfileResponse(
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
      occupation: json['occupation'] as String?,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProfileResponseToJson(_$_ProfileResponse instance) =>
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
      'occupation': instance.occupation,
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

_$_ProfileFiles _$$_ProfileFilesFromJson(Map<String, dynamic> json) =>
    _$_ProfileFiles(
      mainImage: json['mainImage'] as String,
      secondImage: json['secondImage'] as String?,
      thirdImage: json['thirdImage'] as String?,
      fourthImage: json['fourthImage'] as String?,
      fifthImage: json['fifthImage'] as String?,
      sixthImage: json['sixthImage'] as String?,
    );

Map<String, dynamic> _$$_ProfileFilesToJson(_$_ProfileFiles instance) =>
    <String, dynamic>{
      'mainImage': instance.mainImage,
      'secondImage': instance.secondImage,
      'thirdImage': instance.thirdImage,
      'fourthImage': instance.fourthImage,
      'fifthImage': instance.fifthImage,
      'sixthImage': instance.sixthImage,
    };
