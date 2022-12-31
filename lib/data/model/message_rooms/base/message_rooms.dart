// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_rooms.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class MessageRooms<T> {
  MessageRooms(this.nextToken, this.messageRooms);

  @JsonKey(name: 'nextToken')
  String nextToken;

  @JsonKey(name: 'messageRooms')
  List<T> messageRooms;

  factory MessageRooms.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$MessageRoomsFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T value) toJsonT) {
    return _$MessageRoomsToJson<T>(this, toJsonT);
  }
}
