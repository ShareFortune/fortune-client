// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_room_host.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageRoomHost _$$_MessageRoomHostFromJson(Map<String, dynamic> json) =>
    _$_MessageRoomHost(
      id: json['id'] as String,
      roomName: json['roomName'] as String,
      lastSendMessage: json['lastSendMessage'] as String,
      hostMainImageURL: json['hostMainImageURL'] as String,
      participantMainImageURLs:
          (json['participantMainImageURLs'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      unreadCount: json['unreadCount'] as int,
    );

Map<String, dynamic> _$$_MessageRoomHostToJson(_$_MessageRoomHost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'lastSendMessage': instance.lastSendMessage,
      'hostMainImageURL': instance.hostMainImageURL,
      'participantMainImageURLs': instance.participantMainImageURLs,
      'unreadCount': instance.unreadCount,
    };
