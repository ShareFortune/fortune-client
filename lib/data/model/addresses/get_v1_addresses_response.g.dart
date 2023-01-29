// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_v1_addresses_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetV1AddressesResponse _$$_GetV1AddressesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetV1AddressesResponse(
      (json['addresses'] as List<dynamic>)
          .map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetV1AddressesResponseToJson(
        _$_GetV1AddressesResponse instance) =>
    <String, dynamic>{
      'addresses': instance.data,
    };
