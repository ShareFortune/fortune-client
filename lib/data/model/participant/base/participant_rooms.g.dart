// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParticipantRooms<T> _$ParticipantRoomsFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ParticipantRooms<T>(
      json['nextToken'] as String,
      (json['rooms'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$ParticipantRoomsToJson<T>(
  ParticipantRooms<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'rooms': instance.rooms.map(toJsonT).toList(),
    };
