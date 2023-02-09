// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_with_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressWithId _$$_AddressWithIdFromJson(Map<String, dynamic> json) =>
    _$_AddressWithId(
      id: json['id'] as int,
      country: json['country'] as String,
      prefecture: json['prefecture'] as String,
      city: json['city'] as String,
    );

Map<String, dynamic> _$$_AddressWithIdToJson(_$_AddressWithId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'prefecture': instance.prefecture,
      'city': instance.city,
    };
