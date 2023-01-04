// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageRooms<T> _$MessageRoomsFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    MessageRooms<T>(
      json['nextToken'] as String,
      (json['messageRooms'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$MessageRoomsToJson<T>(
  MessageRooms<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'messageRooms': instance.messageRooms.map(toJsonT).toList(),
    };
