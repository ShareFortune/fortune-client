import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/data/model/core/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/core/base/profiles_files/profiles_files.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/data/model/core/enum/age_group.dart';
import 'package:fortune_client/data/model/core/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/core/enum/drink_frequency.dart';
import 'package:fortune_client/data/model/core/enum/gender.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/data/model/rooms/room_detail/room_detail.dart';
import 'package:fortune_client/data/model/rooms/rooms/rooms.dart';

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
  Future<String> update({
    required String roomId,
    required String name,
    required Gender gender,
    required int addressId,
    required ProfilesFiles files,
    required int? height,
    required DrinkFrequency? drinkFrequency,
    required CigaretteFrequency? cigaretteFrequency,
    required String? selfIntroduction,
    required int? occupationId,
    required List<String>? tagIds,
  });

  /// ルームリストを取得
  Future<List<Room>> fetchList({
    int? memberNum,
    List<Tag>? tags,
    Address? address,
  });

  /// ルームリストを取得・ホスト
  Future<List<GetV1RoomsHostResponseRoom>> getRoomsToParticipateAsHost();

  /// ルームリストを取得・ゲスト
  Future<List<GetV1RoomsGuestResponseRoom>> getRoomsToParticipateAsGuest();

  /// 詳細取得
  Future<RoomDetail> fetchDetail(String roomId);
}
