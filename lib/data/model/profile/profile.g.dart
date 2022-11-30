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
      occupation: json['occupation'] as String,
      address: json['address'] as Map<String, dynamic>,
      tags: json['tags'] as List<dynamic>,
      mainImageURL: json['mainImageURL'] as String,
      secondImageURL: json['secondImageURL'] as String,
      thirdImageURL: json['thirdImageURL'] as String,
      fourthImageURL: json['fourthImageURL'] as String,
      fifthImageURL: json['fifthImageURL'] as String,
      sixthImageURL: json['sixthImageURL'] as String,
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
      'occupation': instance.occupation,
      'address': instance.address,
      'tags': instance.tags,
      'mainImageURL': instance.mainImageURL,
      'secondImageURL': instance.secondImageURL,
      'thirdImageURL': instance.thirdImageURL,
      'fourthImageURL': instance.fourthImageURL,
      'fifthImageURL': instance.fifthImageURL,
      'sixthImageURL': instance.sixthImageURL,
    };
