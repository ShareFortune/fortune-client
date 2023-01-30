import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/base/room/room.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms/get_v1_rooms.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';

abstract class RoomsRepository {
  /// ルーム作成
  Future<String> create({
    required String title,
    required int membersNum,
    required AgeGroup ageGroup,
    required AddressWithId addressWithId,
    required String explanation,
    List<Tag>? tagIds,
  });

  /// 更新
  Future<String> update();

  /// ルームリストを取得
  Future<List<GetV1RoomsResponseRoom>> fetchList({
    AddressWithId? addressWithId,
  });
  Future<List<GetV1RoomsHostResponseRoom>> getRoomsToParticipateAsHost();
  Future<List<GetV1RoomsGuestResponseRoom>> getRoomsToParticipateAsGuest();

  /// 詳細取得
  Future<Room> fetchDetail(String roomId);
}
