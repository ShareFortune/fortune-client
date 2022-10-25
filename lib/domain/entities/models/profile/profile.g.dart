// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      drinkFrequency:
          $enumDecode(_$DrinkFrequencyEnumMap, json['drinkFrequency']),
      cigaretteFrequency:
          $enumDecode(_$CigaretteFrequencyEnumMap, json['cigaretteFrequency']),
      selfIntroduction: json['selfIntroduction'] as String,
      countryID: json['countryID'] as String,
      prefectureID: json['prefectureID'] as String,
      cityID: json['cityID'] as String,
      occupationID: json['occupationID'] as String,
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'birthday': instance.birthday.toIso8601String(),
      'gender': _$GenderEnumMap[instance.gender]!,
      'drinkFrequency': _$DrinkFrequencyEnumMap[instance.drinkFrequency]!,
      'cigaretteFrequency':
          _$CigaretteFrequencyEnumMap[instance.cigaretteFrequency]!,
      'selfIntroduction': instance.selfIntroduction,
      'countryID': instance.countryID,
      'prefectureID': instance.prefectureID,
      'cityID': instance.cityID,
      'occupationID': instance.occupationID,
    };

const _$GenderEnumMap = {
  Gender.man: 'man',
  Gender.woman: 'woman',
  Gender.another: 'another',
};

const _$DrinkFrequencyEnumMap = {
  DrinkFrequency.always: 'always',
  DrinkFrequency.often: 'often',
  DrinkFrequency.sometimes: 'sometimes',
  DrinkFrequency.never: 'never',
};

const _$CigaretteFrequencyEnumMap = {
  CigaretteFrequency.always: 'always',
  CigaretteFrequency.often: 'often',
  CigaretteFrequency.sometimes: 'sometimes',
  CigaretteFrequency.never: 'never',
};
