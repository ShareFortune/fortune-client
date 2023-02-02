// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participating_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParticipatingUser _$$_ParticipatingUserFromJson(Map<String, dynamic> json) =>
    _$_ParticipatingUser(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: const GenderConverter().fromJson(json['gender'] as String),
      mainImageURL: json['mainImageURL'] as String,
    );

Map<String, dynamic> _$$_ParticipatingUserToJson(
        _$_ParticipatingUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': const GenderConverter().toJson(instance.gender),
      'mainImageURL': instance.mainImageURL,
    };
