// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fortune_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FortuneUser _$$_FortuneUserFromJson(Map<String, dynamic> json) =>
    _$_FortuneUser(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      mainImageURL: json['mainImageURL'] as String,
    );

Map<String, dynamic> _$$_FortuneUserToJson(_$_FortuneUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender]!,
      'mainImageURL': instance.mainImageURL,
    };

const _$GenderEnumMap = {
  Gender.man: 'man',
  Gender.woman: 'woman',
  Gender.another: 'another',
};
