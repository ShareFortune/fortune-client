// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addresses_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressesResponse _$$_AddressesResponseFromJson(Map<String, dynamic> json) =>
    _$_AddressesResponse(
      addresses: (json['addresses'] as List<dynamic>)
          .map((e) => AddressWithId.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AddressesResponseToJson(
        _$_AddressesResponse instance) =>
    <String, dynamic>{
      'addresses': instance.addresses,
    };
