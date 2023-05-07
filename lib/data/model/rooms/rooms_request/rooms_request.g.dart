// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomsCreateRequest _$$_RoomsCreateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_RoomsCreateRequest(
      roomName: json['roomName'] as String,
      applicationDeadline: json['applicationDeadline'] as String,
      membersNum: json['membersNum'] as int,
      ageGroup: const AgeGroupConverter().fromJson(json['ageGroup'] as String),
      addressId: json['addressId'] as int,
      explanation: json['explanation'] as String,
      tagIds: (json['tagIds'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoomsCreateRequestToJson(
        _$_RoomsCreateRequest instance) =>
    <String, dynamic>{
      'roomName': instance.roomName,
      'applicationDeadline': instance.applicationDeadline,
      'membersNum': instance.membersNum,
      'ageGroup': const AgeGroupConverter().toJson(instance.ageGroup),
      'addressId': instance.addressId,
      'explanation': instance.explanation,
      'tagIds': instance.tagIds,
    };

_$_RoomsUpdateRequest _$$_RoomsUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_RoomsUpdateRequest(
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

Map<String, dynamic> _$$_RoomsUpdateRequestToJson(
        _$_RoomsUpdateRequest instance) =>
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
