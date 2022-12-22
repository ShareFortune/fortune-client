// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_profile_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateProfileForm _$$_CreateProfileFormFromJson(Map<String, dynamic> json) =>
    _$_CreateProfileForm(
      name: json['name'] as String,
      gender: json['gender'] as String,
      height: json['height'] as int,
      drinkFrequency: json['drinkFrequency'] as String,
      cigaretteFrequency: json['cigaretteFrequency'] as String,
      selfIntroduction: json['selfIntroduction'] as String,
      occupationId: json['occupationId'] as int,
      addressId: json['addressId'] as int,
      tags: (json['tagIds'] as List<dynamic>).map((e) => e as String).toList(),
      iconImage: json['mainImage'] as String,
      firstImage: json['secondImage'] as String,
      secondImage: json['thirdImage'] as String,
      thirdImage: json['fourthImage'] as String,
      fourthImage: json['fifthImage'] as String,
      fifthImage: json['sixthImage'] as String,
    );

Map<String, dynamic> _$$_CreateProfileFormToJson(
        _$_CreateProfileForm instance) =>
    <String, dynamic>{
      'name': instance.name,
      'gender': instance.gender,
      'height': instance.height,
      'drinkFrequency': instance.drinkFrequency,
      'cigaretteFrequency': instance.cigaretteFrequency,
      'selfIntroduction': instance.selfIntroduction,
      'occupationId': instance.occupationId,
      'addressId': instance.addressId,
      'tagIds': instance.tags,
      'mainImage': instance.iconImage,
      'secondImage': instance.firstImage,
      'thirdImage': instance.secondImage,
      'fourthImage': instance.thirdImage,
      'fifthImage': instance.fourthImage,
      'sixthImage': instance.fifthImage,
    };
