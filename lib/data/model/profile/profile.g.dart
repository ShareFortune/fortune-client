// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      id: json['id'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      gender: json['gender'] as String,
      height: json['height'] as int,
      drinkFrequency: json['drinkFrequency'] as String,
      cigaretteFrequency: json['cigaretteFrequency'] as String,
      selfIntroduction: json['selfIntroduction'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      mainImageURL: json['mainImageURL'] as String,
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'gender': instance.gender,
      'height': instance.height,
      'drinkFrequency': instance.drinkFrequency,
      'cigaretteFrequency': instance.cigaretteFrequency,
      'selfIntroduction': instance.selfIntroduction,
      'address': instance.address,
      'tags': instance.tags,
      'mainImageURL': instance.mainImageURL,
    };
