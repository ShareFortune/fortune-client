// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rooms _$$_RoomsFromJson(Map<String, dynamic> json) => _$_Rooms(
      nextToken: json['nextToken'] as String,
      data: (json['rooms'] as List<dynamic>)
          .map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoomsToJson(_$_Rooms instance) => <String, dynamic>{
      'nextToken': instance.nextToken,
      'rooms': instance.data,
    };

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      id: json['id'] as String,
      roomName: json['roomName'] as String,
      hostMainImageURL: json['hostMainImageURL'] as String,
      participantMainImageURLs:
          (json['participantMainImageURLs'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool,
      membersNum:
          MembersNum.fromJson(json['membersNum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'hostMainImageURL': instance.hostMainImageURL,
      'participantMainImageURLs': instance.participantMainImageURLs,
      'address': instance.address,
      'isFavorite': instance.isFavorite,
      'membersNum': instance.membersNum,
    };

_$_MembersNum _$$_MembersNumFromJson(Map<String, dynamic> json) =>
    _$_MembersNum(
      maxMenNum: json['maxMenNum'] as int,
      menNum: json['menNum'] as int,
      maxWomenNum: json['maxWomenNum'] as int,
      womenNum: json['womenNum'] as int,
    );

Map<String, dynamic> _$$_MembersNumToJson(_$_MembersNum instance) =>
    <String, dynamic>{
      'maxMenNum': instance.maxMenNum,
      'menNum': instance.menNum,
      'maxWomenNum': instance.maxWomenNum,
      'womenNum': instance.womenNum,
    };
