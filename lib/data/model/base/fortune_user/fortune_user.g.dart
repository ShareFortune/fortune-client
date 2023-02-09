// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fortune_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FortuneUser _$$_FortuneUserFromJson(Map<String, dynamic> json) =>
    _$_FortuneUser(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: const GenderConverter().fromJson(json['gender'] as String),
      mainImageURL: json['mainImageURL'] as String,
    );

Map<String, dynamic> _$$_FortuneUserToJson(_$_FortuneUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': const GenderConverter().toJson(instance.gender),
      'mainImageURL': instance.mainImageURL,
    };
