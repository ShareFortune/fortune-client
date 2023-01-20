// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Addresses _$$_AddressesFromJson(Map<String, dynamic> json) => _$_Addresses(
      (json['addresses'] as List<dynamic>)
          .map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AddressesToJson(_$_Addresses instance) =>
    <String, dynamic>{
      'addresses': instance.addresses,
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      id: json['id'] as int?,
      country: json['country'] as String,
      prefecture: json['prefecture'] as String,
      city: json['city'] as String,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'prefecture': instance.prefecture,
      'city': instance.city,
    };
