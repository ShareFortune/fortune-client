// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_with_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressWithId _$$_AddressWithIdFromJson(Map<String, dynamic> json) =>
    _$_AddressWithId(
      id: json['id'] as int,
      data: Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddressWithIdToJson(_$_AddressWithId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.data,
    };
