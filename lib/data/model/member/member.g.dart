// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Member _$$_MemberFromJson(Map<String, dynamic> json) => _$_Member(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: $enumDecode(_$GenderTypeEnumMap, json['gender']),
      mainImageUrl: json['mainImageUrl'] as String,
    );

Map<String, dynamic> _$$_MemberToJson(_$_Member instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': _$GenderTypeEnumMap[instance.gender]!,
      'mainImageUrl': instance.mainImageUrl,
    };

const _$GenderTypeEnumMap = {
  GenderType.man: 'man',
  GenderType.woman: 'woman',
  GenderType.another: 'another',
};
