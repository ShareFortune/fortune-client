// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_rooms.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ParticipantRooms<T> {
  ParticipantRooms(this.nextToken, this.rooms);

  @JsonKey(name: 'nextToken')
  String nextToken;

  @JsonKey(name: 'rooms')
  List<T> rooms;

  factory ParticipantRooms.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ParticipantRoomsFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T value) toJsonT) {
    return _$ParticipantRoomsToJson<T>(this, toJsonT);
  }
}
