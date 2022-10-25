// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      mainImagePath: json['mainImagePath'] as String,
      secondImagePath: json['secondImagePath'] as String,
      thirdImagePath: json['thirdImagePath'] as String,
      fourthImagePath: json['fourthImagePath'] as String,
      fifthImagePath: json['fifthImagePath'] as String,
      sixthImagePath: json['sixthImagePath'] as String,
      name: json['name'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      height: json['height'] as int,
      drinkFrequency:
          $enumDecode(_$DrinkFrequencyEnumMap, json['drinkFrequency']),
      cigaretteFrequency:
          $enumDecode(_$CigaretteFrequencyEnumMap, json['cigaretteFrequency']),
      selfIntroduction: json['selfIntroduction'] as String,
      adress: Address.fromJson(json['adress'] as Map<String, dynamic>),
      occupationID: json['occupationID'] as String,
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'mainImagePath': instance.mainImagePath,
      'secondImagePath': instance.secondImagePath,
      'thirdImagePath': instance.thirdImagePath,
      'fourthImagePath': instance.fourthImagePath,
      'fifthImagePath': instance.fifthImagePath,
      'sixthImagePath': instance.sixthImagePath,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender]!,
      'height': instance.height,
      'drinkFrequency': _$DrinkFrequencyEnumMap[instance.drinkFrequency]!,
      'cigaretteFrequency':
          _$CigaretteFrequencyEnumMap[instance.cigaretteFrequency]!,
      'selfIntroduction': instance.selfIntroduction,
      'adress': instance.adress,
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
