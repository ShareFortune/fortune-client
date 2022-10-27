// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Member _$$_MemberFromJson(Map<String, dynamic> json) => _$_Member(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      mainImageUrl: json['mainImageUrl'] as String,
    );

Map<String, dynamic> _$$_MemberToJson(_$_Member instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender]!,
      'mainImageUrl': instance.mainImageUrl,
    };

const _$GenderEnumMap = {
  Gender.man: 'man',
  Gender.woman: 'woman',
  Gender.another: 'another',
};
