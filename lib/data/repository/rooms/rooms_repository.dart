import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/data/model/participant/guest/participant_room_as_guest.dart';
import 'package:fortune_client/data/model/participant/host/participant_room_as_host.dart';
import 'package:fortune_client/data/model/room_detail/room_detail.dart';
import 'package:fortune_client/data/model/rooms/rooms.dart';
import 'package:fortune_client/data/model/tag/tag.dart';

abstract class RoomsRepository {
  /// ルーム作成
  Future<bool> create({
    required String title,
    required int membersNum,
    required AgeGroup ageGroup,
    required Address addressId,
    required String explanation,
    List<Tag>? tagIds,
  });

  Future<String> update();
  Future<List<Room>> search();
  Future<List<ParticipantRoomAsHost>> getRoomsToParticipateAsHost();
  Future<List<ParticipantRoomAsGuest>> getRoomsToParticipateAsGuest();

  /// 詳細取得
  Future<RoomDetail> fetchDetail(String roomId);
}
