// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_v1_rooms_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetV1RoomsSearchResponse _$$_GetV1RoomsSearchResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetV1RoomsSearchResponse(
      nextToken: json['nextToken'] as String,
      rooms: Room.fromJson(json['rooms'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetV1RoomsSearchResponseToJson(
        _$_GetV1RoomsSearchResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'rooms': instance.rooms,
    };
