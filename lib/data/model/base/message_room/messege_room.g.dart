// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messege_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageRoom _$$_MessageRoomFromJson(Map<String, dynamic> json) =>
    _$_MessageRoom(
      id: json['id'] as String,
      roomName: json['roomName'] as String,
      lastSendAt: json['lastSentAt'] as String?,
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
      'lastSentAt': instance.lastSendAt,
      'lastSendMessage': instance.lastSendMessage,
      'hostMainImageURL': instance.hostMainImageURL,
      'participantMainImageURLs': instance.participantMainImageURLs,
      'unreadCount': instance.unreadCount,
    };
