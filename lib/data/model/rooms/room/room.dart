import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/profile/members_num/members_num.dart';
import 'package:fortune_client/util/converter/image_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {
  const Room._();
  const factory Room({
    required String id,
    required String roomName,
    required String hostMainImageURL,
    List<String>? participantMainImageURLs,
    required Address address,
    required MembersNum membersNum,
    required bool isFavorite,
  }) = _Room;

  String get hostImageURL =>
      ImageConverter.convertHttpsToHttp(hostMainImageURL);

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
