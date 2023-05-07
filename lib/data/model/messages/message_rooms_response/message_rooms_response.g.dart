// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_rooms_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageRoomsResponse _$$_MessageRoomsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MessageRoomsResponse(
      nextToken: json['nextToken'] as String,
      messageRooms: (json['messageRooms'] as List<dynamic>)
          .map((e) => MessageRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MessageRoomsResponseToJson(
        _$_MessageRoomsResponse instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'messageRooms': instance.messageRooms,
    };

_$_MessageRoom _$$_MessageRoomFromJson(Map<String, dynamic> json) =>
    _$_MessageRoom(
      id: json['id'] as String,
      roomName: json['roomName'] as String,
      lastSendAt: json['lastSendAt'] == null
          ? null
          : DateTime.parse(json['lastSendAt'] as String),
      lastSendMessage: json['lastSendMessage'] as String?,
      hostMainImageURL: json['hostMainImageURL'] as String,
      participantMainImageURLs:
          (json['participantMainImageURLs'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      unreadCount: json['unreadCount'] as int,
    );

Map<String, dynamic> _$$_MessageRoomToJson(_$_MessageRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'lastSendAt': instance.lastSendAt?.toIso8601String(),
      'lastSendMessage': instance.lastSendMessage,
      'hostMainImageURL': instance.hostMainImageURL,
      'participantMainImageURLs': instance.participantMainImageURLs,
      'unreadCount': instance.unreadCount,
    };
